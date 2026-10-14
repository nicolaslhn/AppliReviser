<?php
require __DIR__ . '/config.php';
header('Content-Type: application/json; charset=utf-8');

function out($data, int $code = 200): void {
    http_response_code($code);
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
    exit;
}

try {
    $pdo = db();
    $action = $_REQUEST['action'] ?? '';

    if ($action === 'chapitres') {
        out($pdo->query(
            'SELECT c.id, c.numero, c.theme, c.titre, COUNT(q.id) AS nb_questions
             FROM chapitres c LEFT JOIN questions q ON q.chapitre_id = c.id
             GROUP BY c.id ORDER BY c.numero'
        )->fetchAll());
    }

    if ($action === 'cours') {
        $st = $pdo->prepare('SELECT id, numero, theme, titre, contenu FROM chapitres WHERE id = ?');
        $st->execute([(int)($_GET['id'] ?? 0)]);
        $row = $st->fetch();
        $row ? out($row) : out(['erreur' => 'Chapitre introuvable'], 404);
    }

    if ($action === 'question') {
        $ch  = (int)($_GET['chapitre'] ?? 0);   // 0 = tous les chapitres
        $niv = (int)($_GET['niveau'] ?? 0);     // 0 = tous les niveaux
        $exclude = array_filter(array_map('intval', explode(',', $_GET['exclude'] ?? '')));
        $where = ['1=1'];
        if ($ch)  $where[] = "q.chapitre_id = $ch";
        if ($niv) $where[] = "q.niveau = $niv";
        if ($exclude) $where[] = 'q.id NOT IN (' . implode(',', $exclude) . ')';
        $q = $pdo->query(
            'SELECT q.id, q.niveau, q.enonce, c.titre AS chapitre
             FROM questions q JOIN chapitres c ON c.id = q.chapitre_id
             WHERE ' . implode(' AND ', $where) . ' ORDER BY RAND() LIMIT 1'
        )->fetch();
        if (!$q) out(['vide' => true]);
        $st = $pdo->prepare('SELECT id, texte FROM reponses WHERE question_id = ? ORDER BY RAND()');
        $st->execute([$q['id']]);
        $q['reponses'] = $st->fetchAll();   // la bonne réponse n'est jamais envoyée ici
        out($q);
    }

    if ($action === 'repondre') {
        $qid = (int)($_POST['question_id'] ?? 0);
        $rid = (int)($_POST['reponse_id'] ?? 0);
        $st = $pdo->prepare('SELECT id FROM reponses WHERE question_id = ? AND est_correcte = 1 LIMIT 1');
        $st->execute([$qid]);
        $bonne = $st->fetchColumn();
        $st = $pdo->prepare('SELECT explication FROM questions WHERE id = ?');
        $st->execute([$qid]);
        out(['correct' => $bonne && (int)$bonne === $rid, 'bonne_id' => (int)$bonne, 'explication' => $st->fetchColumn()]);
    }

    out(['erreur' => 'Action inconnue'], 400);
} catch (Throwable $e) {
    out(['erreur' => 'Erreur serveur : vérifie config.php et l’import du fichier SQL.'], 500);
}
