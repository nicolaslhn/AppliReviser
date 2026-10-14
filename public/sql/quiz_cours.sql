-- ============================================================
--  Base de données : quiz_cours
--  À importer dans phpMyAdmin (onglet « Importer » ou « SQL »)
--  Convention : n’utiliser que l’apostrophe typographique ’ dans les textes
--  (évite d’avoir à échapper les apostrophes droites).
-- ============================================================
CREATE DATABASE IF NOT EXISTS quiz_cours CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE quiz_cours;

DROP TABLE IF EXISTS reponses;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS chapitres;

CREATE TABLE chapitres (
  id      INT AUTO_INCREMENT PRIMARY KEY,
  numero  INT NOT NULL,                 -- numéro du chapitre (1, 2, 4, 5…)
  theme   VARCHAR(150) NOT NULL,
  titre   VARCHAR(200) NOT NULL,
  contenu MEDIUMTEXT NOT NULL          -- le cours, en HTML
) ENGINE=InnoDB;

CREATE TABLE questions (
  id          INT AUTO_INCREMENT PRIMARY KEY,
  chapitre_id INT NOT NULL,
  niveau      TINYINT NOT NULL,         -- 1, 2 ou 3 étoiles
  enonce      TEXT NOT NULL,
  explication TEXT NOT NULL,            -- affichée quand la réponse est fausse
  CONSTRAINT ck_niveau CHECK (niveau BETWEEN 1 AND 3),
  CONSTRAINT fk_q_chapitre FOREIGN KEY (chapitre_id) REFERENCES chapitres(id) ON DELETE CASCADE,
  INDEX idx_chap_niv (chapitre_id, niveau)
) ENGINE=InnoDB;

CREATE TABLE reponses (
  id           INT AUTO_INCREMENT PRIMARY KEY,
  question_id  INT NOT NULL,
  texte        VARCHAR(500) NOT NULL,
  est_correcte TINYINT(1) NOT NULL DEFAULT 0,
  CONSTRAINT fk_r_question FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- ------------------------------------------------------------
--  CHAPITRE 1 : Les agents économiques en relation avec l’entreprise
-- ------------------------------------------------------------
INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES
(1, 1, 'Thème 1 : L’intégration de l’entreprise dans son environnement', 'Les agents économiques en relation avec l’entreprise',
'<h3>I. Les relations entre l’entreprise et les ménages</h3>
<p>Un <b>ménage</b> est l’ensemble des personnes qui habitent une même résidence principale, même sans lien de parenté. Sa principale fonction économique est la <b>consommation</b> ; il participe aussi à la production en travaillant.</p>
<h4>A. Sur le marché des biens et services</h4>
<p>Un flux à double sens s’établit :</p>
<ul><li><b>flux réel</b> : biens et services, de l’entreprise vers les ménages ;</li><li><b>flux monétaire</b> : paiements des ménages, qui représentent le chiffre d’affaires de l’entreprise.</li></ul>
<p>Les choix des ménages dépendent de la valeur qu’ils attribuent aux biens et de leur budget. Leur <b>moral</b> influence l’arbitrage consommation / épargne : une économie saine (croissance, emploi) pousse à consommer, une conjoncture défavorable incite à épargner. Les entreprises doivent anticiper et personnaliser la relation avec des consommateurs de plus en plus nomades et volatiles.</p>
<h4>B. Sur le marché du travail</h4>
<p>Ménages et entreprises échangent du <b>travail</b> (flux réel) contre des <b>salaires</b> (flux monétaire).</p>
<div class="schema"><span>Entreprise</span><span>⇄ Biens et services / Paiements<br>⇄ Travail / Salaires</span><span>Ménages</span></div>
<p>Cette vision en circuit montre la forte <b>interdépendance</b> entre les acteurs.</p>

<h3>II. Les relations avec les autres entreprises</h3>
<p>La principale fonction d’une entreprise est la production de biens et services marchands. Pour cela, elle achète à des <b>fournisseurs</b> :</p>
<ul><li>de <b>biens</b> : matières premières, produits intermédiaires…</li><li>de <b>services</b> : transport, entretien, publicité…</li><li>d’<b>immobilisations</b> : biens de production durables (mobilier, outils…).</li></ul>
<p>Une collaboration réussie avec les fournisseurs et partenaires est un facteur de performance : elle crée de la valeur et permet des offres différenciées (exemple : la plateforme Daleko et ses partenaires locaux).</p>

<h3>III. Les relations avec les banques</h3>
<h4>A. Le rôle des banques</h4>
<p>Les banques <b>collectent l’épargne</b> et <b>accordent des crédits</b> : elles sont des intermédiaires entre agents économiques. Elles gèrent aussi les moyens de paiement, sécurisent les transactions et conseillent les entreprises. Le crédit est un <b>financement indirect</b>.</p>
<h4>B. Le rôle des marchés financiers</h4>
<p>Le marché financier met directement en relation les <b>agents à besoin de financement (ABF)</b> et les <b>agents à capacité de financement (ACF)</b>. Les ABF émettent des <b>titres</b> (actions ou obligations) vendus aux ACF : c’est le <b>financement direct</b>.</p>
<ul><li><b>Marché des actions</b> : titres de propriété d’entreprises cotées (appel public à l’épargne).</li><li><b>Marché obligataire</b> : emprunts à moyen ou long terme.</li><li><b>Marché primaire</b> : émission des nouveaux titres. <b>Marché secondaire</b> (la Bourse, « marché de l’occasion ») : échange des titres déjà émis.</li></ul>
<h4>C. Le renouvellement de l’activité des banques</h4>
<p>Les marchés financiers n’ont pas marginalisé les banques : elles sont devenues des intermédiaires privilégiés sur ces marchés et conseillent leurs clients (montage des dossiers, choix des titres et conditions, levée de fonds auprès des investisseurs).</p>

<h3>IV. Les relations avec l’État</h3>
<p>L’État produit des <b>services non marchands</b> (éducation, sécurité, infrastructures…) d’intérêt général, financés par les <b>impôts, taxes et cotisations sociales</b>.</p>
<ul><li>Il soutient les entreprises par des <b>aides financières</b> et subventions (création, reprise, innovation…).</li><li><b>BpiFrance</b> (créée en 2013) : banque publique d’investissement qui finance création, innovation, conquête de marchés, croissance externe…</li><li>Les entreprises, en retour, paient des impôts et taxes : résultat (impôt sur les sociétés), nombre de salariés (cotisations sociales)…</li></ul>');

-- ---------- Questions ★ (niveau 1) ----------
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(1, 1, 1, 'Qu’est-ce qu’un ménage ?', 'Un ménage regroupe les personnes qui partagent une même résidence principale, qu’elles aient ou non un lien de parenté.'),
(2, 1, 1, 'Quelle est la principale fonction économique d’un ménage ?', 'Le ménage consomme des biens et services. Il participe aussi à la production en travaillant, mais sa fonction principale reste la consommation.'),
(3, 1, 1, 'Sur le marché des biens et services, que reçoivent les ménages de la part des entreprises (flux réel) ?', 'Le flux réel va de l’entreprise vers les ménages : ce sont les biens et services. Le flux monétaire (les paiements) circule en sens inverse.'),
(4, 1, 1, 'Sur le marché du travail, qu’est-ce qui constitue le flux monétaire ?', 'Les ménages fournissent du travail (flux réel) et reçoivent en échange des salaires (flux monétaire).'),
(5, 1, 1, 'Quelle est la principale activité des banques ?', 'Les banques collectent l’épargne et accordent des crédits : ce sont des intermédiaires entre les agents économiques.'),
(6, 1, 1, 'Quel type de services l’État produit-il principalement ?', 'L’État produit des services non marchands (éducation, sécurité, infrastructures…), d’intérêt général et financés par les prélèvements obligatoires.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(1, 'L’ensemble des personnes qui habitent une même résidence principale, même sans lien de parenté', 1),
(1, 'Uniquement un couple et ses enfants', 0),
(1, 'Les membres d’une même famille, même s’ils habitent des logements différents', 0),
(1, 'Un groupe de salariés d’une même entreprise', 0),
(2, 'La consommation', 1), (2, 'La production de biens', 0), (2, 'La collecte de l’épargne', 0), (2, 'La levée d’impôts', 0),
(3, 'Des biens et des services', 1), (3, 'Des salaires', 0), (3, 'Du travail', 0), (3, 'Des impôts', 0),
(4, 'Les salaires versés aux ménages', 1), (4, 'Le travail fourni', 0), (4, 'Le chiffre d’affaires', 0), (4, 'Les cotisations sociales', 0),
(5, 'Collecter l’épargne et accorder des crédits', 1), (5, 'Produire des biens de consommation', 0), (5, 'Fixer les impôts des entreprises', 0), (5, 'Vendre des matières premières', 0),
(6, 'Des services non marchands', 1), (6, 'Des biens de consommation courante', 0), (6, 'Des produits financiers', 0), (6, 'Des matières premières', 0);

-- ---------- Questions ★★ (niveau 2) ----------
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(7, 1, 2, 'Parmi ces achats, lequel relève d’un fournisseur d’immobilisations ?', 'Les immobilisations sont des biens de production durables (mobilier, outils, machines). Les matières premières sont des biens ; le transport et la publicité sont des services.'),
(8, 1, 2, 'Face à une conjoncture économique défavorable, comment réagissent généralement les ménages ?', 'Quand la situation économique se dégrade, le moral des ménages baisse : ils arbitrent en faveur de l’épargne. À l’inverse, croissance et emploi poussent à consommer.'),
(9, 1, 2, 'Qu’est-ce qui caractérise le financement indirect ?', 'Dans le financement indirect, la banque s’intercale : elle collecte l’épargne puis accorde des crédits. Dans le financement direct, ABF et ACF se rencontrent sur le marché financier.'),
(10, 1, 2, 'Que désigne le marché primaire ?', 'Le marché primaire est celui où les nouveaux titres sont émis. L’échange des titres déjà émis se fait sur le marché secondaire, la Bourse.'),
(11, 1, 2, 'Qu’est-ce que BpiFrance ?', 'BpiFrance, créée en 2013, est une banque publique d’investissement qui accompagne les entreprises (création, innovation, international, croissance externe…).'),
(12, 1, 2, 'Sur quoi repose le calcul des cotisations sociales d’une entreprise ?', 'Les cotisations sociales dépendent notamment du nombre de salariés ; l’impôt sur les sociétés, lui, dépend du résultat.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(7, 'L’achat de mobilier et d’outils de production', 1), (7, 'L’achat de matières premières', 0), (7, 'Un contrat de transport de marchandises', 0), (7, 'Une campagne de publicité', 0),
(8, 'Ils ont tendance à épargner davantage', 1), (8, 'Ils consomment davantage', 0), (8, 'Ils investissent en créant des entreprises', 0), (8, 'Ils arrêtent de travailler', 0),
(9, 'Une banque collecte l’épargne puis accorde des crédits aux entreprises', 1), (9, 'L’entreprise émet des actions vendues aux épargnants', 0), (9, 'L’entreprise reçoit une subvention de l’État', 0), (9, 'L’entreprise se finance uniquement avec ses bénéfices', 0),
(10, 'Le marché où les nouveaux titres sont émis', 1), (10, 'Le marché où l’on revend des titres déjà émis', 0), (10, 'Le marché du travail des jeunes diplômés', 0), (10, 'Le marché des biens de première nécessité', 0),
(11, 'Une banque publique d’investissement créée en 2013', 1), (11, 'Une agence de notation privée', 0), (11, 'Un impôt sur les entreprises', 0), (11, 'Une bourse de valeurs européenne', 0),
(12, 'Le nombre de salariés', 1), (12, 'Le résultat de l’entreprise', 0), (12, 'Le montant des dividendes versés', 0), (12, 'Le nombre de fournisseurs', 0);

-- ---------- Questions ★★★ (niveau 3) ----------
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(13, 1, 3, 'Une entreprise émet des obligations achetées par des investisseurs pour financer un projet. De quel type de financement s’agit-il ?', 'L’entreprise (ABF) émet des titres vendus directement à des ACF sur le marché obligataire : c’est du financement direct, sans passer par un crédit bancaire.'),
(14, 1, 3, 'Une entreprise achète un camion de livraison à un concessionnaire. Quel est le statut du concessionnaire pour elle ?', 'Un camion est un bien de production durable : le concessionnaire est un fournisseur d’immobilisations.'),
(15, 1, 3, 'Un ménage achète un smartphone 600 € à une entreprise. Quelle affirmation est exacte ?', 'Le smartphone est le flux réel (entreprise → ménage) ; les 600 € sont le flux monétaire (ménage → entreprise) et alimentent le chiffre d’affaires.'),
(16, 1, 3, 'Pourquoi le développement des marchés financiers n’a-t-il pas marginalisé les banques ?', 'Les banques se sont adaptées : elles interviennent sur les marchés financiers comme intermédiaires privilégiés et conseillent leurs clients (dossiers, choix des titres, levée de fonds).'),
(17, 1, 3, 'Quelle affirmation décrit correctement ABF et ACF ?', 'Les ABF (agents à besoin de financement) émettent des titres ; les ACF (agents à capacité de financement) les achètent pour placer leur épargne.'),
(18, 1, 3, 'Un investisseur revend à un autre investisseur des actions d’une entreprise cotée. Que se passe-t-il pour l’entreprise ?', 'Il s’agit du marché secondaire (la Bourse, marché de l’occasion) : les titres changent de main entre investisseurs, l’entreprise ne reçoit aucun nouveau capital.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(13, 'Un financement direct par le marché financier', 1), (13, 'Un financement indirect par crédit bancaire', 0), (13, 'Une subvention publique', 0), (13, 'Un autofinancement', 0),
(14, 'Un fournisseur d’immobilisations', 1), (14, 'Un fournisseur de matières premières', 0), (14, 'Un fournisseur de services', 0), (14, 'Un client de l’entreprise', 0),
(15, 'Le smartphone est un flux réel ; les 600 € sont un flux monétaire qui constitue du chiffre d’affaires', 1), (15, 'Le smartphone est un flux monétaire ; les 600 € sont un flux réel', 0), (15, 'Les deux sont des flux réels', 0), (15, 'Les 600 € sont des salaires versés par le ménage', 0),
(16, 'Elles sont devenues des intermédiaires privilégiés sur les marchés et conseillent leurs clients', 1), (16, 'Elles ont cessé d’accorder des crédits', 0), (16, 'Elles ont été remplacées par l’État', 0), (16, 'Elles ont fusionné avec les entreprises', 0),
(17, 'Les ABF émettent des titres que les ACF achètent pour placer leur épargne', 1), (17, 'Les ACF émettent des titres que les ABF achètent', 0), (17, 'Les ABF et les ACF sont uniquement des banques', 0), (17, 'Les ACF sont toujours des entreprises en difficulté', 0),
(18, 'Elle ne reçoit pas de fonds : c’est le marché secondaire', 1), (18, 'Elle encaisse le prix de vente : c’est le marché primaire', 0), (18, 'Elle obtient un crédit bancaire', 0), (18, 'Elle verse des impôts supplémentaires', 0);

-- ============================================================
--  POUR AJOUTER UN CHAPITRE PLUS TARD (modèle)
--  1) INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES (2, 2, '…', '…', '<h3>…</h3>…');
--  2) INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES (101, 2, 1, '…', '…');
--  3) INSERT INTO reponses (question_id, texte, est_correcte) VALUES (101, '…', 1), (101, '…', 0), …;
--  Aucune modification du code PHP / JS n’est nécessaire.
-- ============================================================
