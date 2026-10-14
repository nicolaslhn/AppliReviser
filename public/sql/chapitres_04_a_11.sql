-- ============================================================
--  CHAPITRES 4 à 11 : cours + questions
--  À importer dans phpMyAdmin APRÈS quiz_cours.sql (ne supprime rien).
--  Identifiants des questions : numéro du chapitre x 100 + n (ex. 401, 402…).
-- ============================================================
USE quiz_cours;

-- ---------- Chapitre 4 : De la création à la pérennité de l’entreprise ----------
INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES (4, 4, 'Thème 1 : L’intégration de l’entreprise dans son environnement', 'De la création à la pérennité de l’entreprise', '<h3>I. Les étapes de la création d’une entreprise</h3>
<ul>
<li><b>Trouver une idée</b> : souvent une intuition à approfondir (utilité, usage, performance du bien ou service).</li>
<li><b>Réaliser une étude de marché</b> : découvrir le marché et ses tendances, connaître les acheteurs et leurs besoins, estimer la demande potentielle, identifier les concurrents, fixer des hypothèses de chiffre d’affaires et de parts de marché.</li>
<li><b>Monter un business plan</b> : dossier qui présente le projet (description, créateurs, concept, étude économique, plan d’action).</li>
<li><b>Chercher des financements</b> : capitaux de départ (apports des créateurs, fonds propres), levée de fonds (investisseurs), emprunts bancaires, financement participatif (crowdfunding).</li>
<li><b>Trouver des aides et subventions</b> : aides financières, allègements fiscaux, exonérations de charges sociales, mise à disposition de locaux…</li>
<li><b>Choisir un statut juridique</b> : conséquences fiscales et sociales, selon l’activité et le nombre d’associés.</li>
<li><b>Réaliser les formalités administratives</b> : déclarer l’activité et obtenir l’immatriculation, auprès du <b>CFE</b> (centre de formalités des entreprises), interlocuteur unique.</li>
</ul>
<h3>II. Démarche entrepreneuriale et démarche managériale</h3>
<p><b>Démarche entrepreneuriale</b> : à partir d’une idée, une ou plusieurs personnes mettent sur pied un projet qui aboutit à la création ou à la reprise d’une entreprise. Pour <b>Schumpeter</b> (« destruction créative »), l’entrepreneur est un visionnaire qui innove et prend des risques pour saisir de nouvelles opportunités.</p>
<p><b>Démarche managériale</b> : gérer de manière optimale les ressources pour développer l’entreprise et assurer sa pérennité. Le manager <b>fixe des objectifs</b>, <b>définit les moyens</b>, <b>anime et dirige</b> les ressources humaines et <b>contrôle</b> les résultats.</p>
<p>Les deux démarches sont <b>complémentaires</b> : l’entrepreneur doit souvent devenir manager pour assurer la pérennité. L’une repose sur l’intuition, la créativité et la prise de risque ; l’autre sur la gestion optimale des ressources.</p>');
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(401, 4, 1, 'Quel est le but de l’étude de marché ?', 'L’étude de marché permet de découvrir le marché et ses tendances, de connaître les acheteurs, d’estimer la demande potentielle et d’identifier les concurrents.'),
(402, 4, 1, 'Qu’est-ce qu’un business plan ?', 'Le business plan est le dossier qui présente le projet de création : description, créateurs, concept, étude économique et plan d’action.'),
(403, 4, 1, 'Quel organisme centralise les formalités administratives de création d’une entreprise ?', 'Le CFE (centre de formalités des entreprises) est un interlocuteur unique : il centralise les pièces du dossier et les transmet aux organismes concernés.'),
(404, 4, 2, 'Que désignent les « capitaux de départ » d’un projet de création ?', 'Les capitaux de départ sont les apports des créateurs, c’est-à-dire les fonds propres. Les apports d’investisseurs relèvent de la levée de fonds.'),
(405, 4, 2, 'Pourquoi le choix du statut juridique est-il une étape importante ?', 'Le statut juridique a des conséquences fiscales et sociales ; il doit être adapté aux caractéristiques du projet (activité, nombre d’associés).'),
(406, 4, 2, 'Comment Schumpeter décrit-il l’entrepreneur ?', 'Pour Schumpeter, l’entrepreneur est un visionnaire doté d’intuition, capable d’innover et de prendre des risques pour saisir de nouvelles opportunités (destruction créative).'),
(407, 4, 3, 'Laquelle de ces missions ne fait PAS partie du rôle du manager ?', 'Le manager fixe les objectifs, définit les moyens, anime et dirige les ressources humaines et contrôle les résultats. Les formalités d’immatriculation relèvent de la création de l’entreprise.'),
(408, 4, 3, 'Pourquoi l’entrepreneur doit-il souvent endosser le rôle de manager ?', 'Le développement de l’entreprise oblige l’entrepreneur à gérer de façon optimale ses ressources pour assurer sa pérennité : les deux démarches sont complémentaires.'),
(409, 4, 3, 'Un créateur lance une cagnotte en ligne ouverte au public pour financer son projet. De quel type de financement s’agit-il ?', 'Un appel au grand public via une plateforme est du financement participatif (crowdfunding), distinct de la levée de fonds auprès d’investisseurs et de l’emprunt bancaire.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(401, 'Connaître le marché, la demande potentielle et les concurrents', 1),
(401, 'Choisir le statut juridique de l’entreprise', 0),
(401, 'Obtenir l’immatriculation de l’entreprise', 0),
(401, 'Fixer le salaire des futurs employés', 0),
(402, 'Un dossier qui présente le projet de création d’entreprise', 1),
(402, 'Un formulaire d’immatriculation', 0),
(402, 'Une aide financière versée par l’État', 0),
(402, 'Un emprunt auprès d’une banque', 0),
(403, 'Le CFE', 1),
(403, 'L’INPI', 0),
(403, 'La Banque de France', 0),
(403, 'L’Autorité de la concurrence', 0),
(404, 'Les apports des créateurs (fonds propres)', 1),
(404, 'Les apports d’investisseurs extérieurs', 0),
(404, 'Un prêt accordé par une banque', 0),
(404, 'Les subventions de l’État', 0),
(405, 'Il a des conséquences fiscales et sociales', 1),
(405, 'Il fixe le prix de vente des produits', 0),
(405, 'Il remplace l’étude de marché', 0),
(405, 'Il détermine le nombre de clients', 0),
(406, 'Un visionnaire qui innove et prend des risques', 1),
(406, 'Un gestionnaire qui évite toute prise de risque', 0),
(406, 'Un fonctionnaire chargé de contrôler les entreprises', 0),
(406, 'Un salarié qui exécute les décisions du manager', 0),
(407, 'Réaliser les formalités d’immatriculation auprès du CFE', 1),
(407, 'Fixer des objectifs', 0),
(407, 'Animer et diriger les ressources humaines', 0),
(407, 'Contrôler que les résultats sont conformes aux objectifs', 0),
(408, 'Pour assurer la pérennité de l’entreprise qui se développe', 1),
(408, 'Parce que la loi l’impose dès la création', 0),
(408, 'Parce que l’innovation n’est plus nécessaire ensuite', 0),
(408, 'Parce que le manager remplace obligatoirement l’entrepreneur', 0),
(409, 'Du financement participatif (crowdfunding)', 1),
(409, 'Une levée de fonds auprès d’investisseurs', 0),
(409, 'Un emprunt bancaire', 0),
(409, 'Un apport en fonds propres des créateurs', 0);

-- ---------- Chapitre 5 : Finalités et performance de l’entreprise ----------
INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES (5, 5, 'Thème 1 : L’intégration de l’entreprise dans son environnement', 'Finalités et performance de l’entreprise', '<h3>I. Les finalités économique, sociale et sociétale</h3>
<p>La <b>finalité</b> est la raison d’être de l’entreprise : une orientation générale à long terme, définie par les fondateurs ou dirigeants. Elle peut être :</p>
<ul><li><b>économique</b> : satisfaire les clients et créer de la valeur financière (profit) ;</li><li><b>sociale</b> : prendre en compte les attentes des salariés ;</li><li><b>sociétale</b> : contribuer au bien-être de la société.</li></ul>
<p>Pour <b>Peter Drucker</b>, la finalité est de créer et développer une clientèle. L’<b>objectif</b> est le moyen d’atteindre la finalité : il doit être précis, mesurable et communiqué.</p>
<p>La <b>RSE</b> (responsabilité sociale ou sociétale des entreprises) est l’intégration volontaire de préoccupations sociales, environnementales et économiques dans l’activité et les relations avec les parties prenantes. Trois piliers : <b>économique</b>, <b>social</b>, <b>environnemental</b>.</p>
<h3>II. Les parties prenantes</h3>
<p>Pour <b>Freeman</b>, une partie prenante est tout groupe ou individu qui peut affecter ou être affecté par la réalisation des objectifs de l’organisation.</p>
<ul><li><b>Primaires</b> (microenvironnement) : la pérennité de l’entreprise dépend d’elles — actionnaires, salariés, clients, fournisseurs.</li><li><b>Secondaires</b> (macroenvironnement) : influencent ou sont influencées sans être essentielles à sa survie — médias, pouvoirs publics.</li></ul>
<p>Attentes : le dirigeant veut développer l’entreprise ; le salarié, un salaire juste et de bonnes conditions de travail ; l’actionnaire, la rentabilité de son investissement ; le syndicat, la défense des salariés ; le client, qualité, prix, délai, sécurité ; le fournisseur, des débouchés et une relation durable ; l’État, le respect de l’environnement légal et une contribution au développement économique.</p>
<h3>III. La performance</h3>
<p>La performance associe l’<b>efficacité</b> (obtenir les résultats espérés) et l’<b>efficience</b> (minimiser les ressources employées pour y parvenir). Les entreprises visent la <b>performance globale</b> : économique, sociale et sociétale.</p>
<p>Elle se mesure par des indicateurs : <b>économiques</b> (chiffre d’affaires, résultat net, dividende), <b>sociaux</b> (implication, absentéisme, turnover), <b>commerciaux</b> (part de marché, notoriété), <b>environnementaux</b> (recyclage, consommation d’énergie), regroupés dans un <b>tableau de bord</b>.</p>
<p>Le <b>tableau de bord prospectif</b> (Kaplan et Norton, années 1990) a quatre axes : <b>Clients</b>, <b>Résultats financiers</b>, <b>Processus internes</b>, <b>Apprentissage organisationnel</b> (dimension humaine). C’est un instrument de pilotage stratégique de la performance globale.</p>');
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(501, 5, 1, 'Qu’est-ce que la finalité d’une entreprise ?', 'La finalité est la raison d’être de l’entreprise : une orientation générale à long terme, définie par ses fondateurs ou dirigeants.'),
(502, 5, 1, 'Que correspond la finalité sociale d’une entreprise ?', 'La finalité sociale correspond à la prise en compte des attentes des salariés.'),
(503, 5, 1, 'Selon Peter Drucker, quelle est la finalité d’une entreprise ?', 'Pour Peter Drucker, la finalité d’une entreprise est de créer et de développer une clientèle.'),
(504, 5, 2, 'Quels acteurs sont des parties prenantes primaires ?', 'Les parties prenantes primaires (actionnaires, salariés, clients, fournisseurs) ont un lien productif et financier avec l’entreprise : sa pérennité dépend de leur satisfaction. Médias et pouvoirs publics sont secondaires.'),
(505, 5, 2, 'Quelle est la différence entre efficacité et efficience ?', 'L’efficacité est la capacité à obtenir les résultats espérés ; l’efficience est l’aptitude à minimiser les ressources employées pour les obtenir.'),
(506, 5, 2, 'Quels sont les trois piliers de la RSE ?', 'La RSE repose sur trois piliers : économique, social et environnemental.'),
(507, 5, 3, 'L’absentéisme et le turnover sont des indicateurs de quel type ?', 'L’implication des salariés, l’absentéisme et le turnover sont des indicateurs sociaux de la performance.'),
(508, 5, 3, 'Quel axe du tableau de bord prospectif s’intéresse à l’implication et aux compétences des salariés ?', 'L’axe « Apprentissage organisationnel » traite de la dimension humaine : implication, niveau de compétences et capacité à apprendre.'),
(509, 5, 3, 'Une entreprise atteint son objectif de production en utilisant moins de ressources que prévu. Que peut-on dire ?', 'Elle obtient le résultat espéré (efficacité) en minimisant les ressources employées (efficience) : elle est performante.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(501, 'Sa raison d’être, qui donne une orientation à long terme', 1),
(501, 'Un objectif chiffré à atteindre dans l’année', 0),
(501, 'Le montant de son chiffre d’affaires', 0),
(501, 'Une obligation imposée par l’État', 0),
(502, 'La prise en compte des attentes des salariés', 1),
(502, 'La recherche du profit pour les actionnaires', 0),
(502, 'La contribution au bien-être de la société', 0),
(502, 'La satisfaction des fournisseurs', 0),
(503, 'Créer et développer une clientèle', 1),
(503, 'Maximiser les dividendes', 0),
(503, 'Réduire le nombre de salariés', 0),
(503, 'Dominer son marché par tous les moyens', 0),
(504, 'Les actionnaires, salariés, clients et fournisseurs', 1),
(504, 'Les médias et les pouvoirs publics', 0),
(504, 'Uniquement les concurrents', 0),
(504, 'Les associations de consommateurs seulement', 0),
(505, 'L’efficience consiste à minimiser les ressources pour atteindre les résultats', 1),
(505, 'L’efficacité consiste à minimiser les ressources utilisées', 0),
(505, 'Les deux termes sont des synonymes exacts', 0),
(505, 'L’efficience mesure uniquement le chiffre d’affaires', 0),
(506, 'Économique, social et environnemental', 1),
(506, 'Politique, juridique et technologique', 0),
(506, 'Commercial, financier et fiscal', 0),
(506, 'Local, national et international', 0),
(507, 'Des indicateurs sociaux', 1),
(507, 'Des indicateurs économiques', 0),
(507, 'Des indicateurs environnementaux', 0),
(507, 'Des indicateurs commerciaux', 0),
(508, 'L’axe « Apprentissage organisationnel »', 1),
(508, 'L’axe « Clients »', 0),
(508, 'L’axe « Résultats financiers »', 0),
(508, 'L’axe « Processus internes »', 0),
(509, 'Elle est à la fois efficace et efficiente', 1),
(509, 'Elle est efficace mais pas efficiente', 0),
(509, 'Elle est efficiente mais pas efficace', 0),
(509, 'Elle n’est ni efficace ni efficiente', 0);

-- ---------- Chapitre 6 : Le rôle de l’État et les finalités de la politique économique ----------
INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES (6, 6, 'Thème 2 : La régulation de l’activité économique', 'Le rôle de l’État et les finalités de la politique économique', '<h3>I. Les fonctions de l’État</h3>
<p><b>Allocation</b> : l’État corrige les défaillances de marché :</p>
<ul><li><b>concurrence</b> insuffisante (ex. : entrée de Free sur la téléphonie mobile en 2009) ;</li><li><b>biens publics</b> : produits par l’État car aucun acteur privé ne contribuerait volontairement (ex. : enseignement public) ;</li><li><b>externalités</b> positives ou négatives (ex. : crédit d’impôt pour les exploitations agricoles à haute valeur environnementale) ;</li><li><b>insuffisance d’information</b> (asymétrie) : ex. étiquette énergétique obligatoire.</li></ul>
<p><b>Redistribution</b> : les revenus primaires (travail, propriété) sont inégalitaires. L’État opère des <b>prélèvements</b> (impôts, cotisations) et verse des <b>prestations sociales</b> (allocations, retraites…) pour réduire les écarts de revenus.</p>
<p><b>Régulation</b> : l’État lutte contre le chômage (déséquilibre du marché du travail), contre l’inflation (hausse des prix, qui nuit à la compétitivité) et régule l’activité (faible activité → chômage ; forte activité → tensions inflationnistes).</p>
<h3>II. Les objectifs de la politique économique</h3>
<p>Quatre objectifs, mesurés par des indicateurs : activité (<b>taux de croissance</b>), inflation (<b>taux d’inflation</b>), balance commerciale (<b>solde commercial</b> = exportations − importations), chômage (<b>taux de chômage</b>). <b>Kaldor</b> les représente dans le <b>carré magique</b>.</p>
<p>La <b>croissance</b> se mesure par l’évolution du <b>PIB</b>, somme des valeurs ajoutées. <b>VA = production (P) − consommations intermédiaires (CI)</b>.</p>
<p>Le <b>développement</b> est une notion qualitative, mesurée par l’<b>IDH</b> (espérance de vie, éducation, revenu par habitant). La croissance est nécessaire au développement, qui doit être durable.</p>
<h3>III. Les principales politiques économiques</h3>
<p>Politiques <b>conjoncturelles</b> : court terme, stabiliser la conjoncture. Politiques <b>structurelles</b> : long terme, développement pérenne et respectueux de l’environnement.</p>');
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(601, 6, 1, 'Quelles sont les trois grandes fonctions de l’État dans l’économie ?', 'L’État intervient à travers trois fonctions : l’allocation, la redistribution et la régulation.'),
(602, 6, 1, 'En quoi consiste la fonction de redistribution ?', 'L’État prélève des impôts et cotisations sur les revenus primaires et verse des prestations sociales : cela réduit les écarts de revenus.'),
(603, 6, 1, 'Quel taux mesure l’objectif d’activité économique ?', 'L’activité économique est mesurée par le taux de croissance, c’est-à-dire l’évolution du PIB entre deux dates.'),
(604, 6, 2, 'Comment calcule-t-on la valeur ajoutée (VA) ?', 'La valeur ajoutée est la différence entre la valeur de la production (P) et celle des consommations intermédiaires (CI) : VA = P − CI.'),
(605, 6, 2, 'Quels éléments composent l’IDH ?', 'L’IDH (indicateur de développement humain) combine l’espérance de vie, le degré d’éducation et le revenu par habitant.'),
(606, 6, 2, 'Pourquoi l’État produit-il des biens publics ?', 'Aucun acteur privé ne serait prêt à contribuer volontairement à leur production : c’est une défaillance de marché que l’État corrige.'),
(607, 6, 3, 'L’État autorise l’entrée de Free sur le marché de la téléphonie mobile en 2009. Quelle fonction illustre cet exemple ?', 'Pour renforcer la concurrence et éviter des prix trop élevés, l’État intervient en tant qu’allocateur de ressources : c’est la fonction d’allocation.'),
(608, 6, 3, 'L’étiquette énergétique obligatoire sur les appareils répond à quel problème de marché ?', 'Elle informe l’acheteur sur la qualité du produit : l’État corrige ainsi une asymétrie d’information.'),
(609, 6, 3, 'Pourquoi une inflation trop forte peut-elle accroître le chômage ?', 'Les produits français renchérissent, deviennent moins attractifs à l’extérieur et à l’intérieur du pays ; l’activité ralentit et le chômage peut augmenter.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(601, 'Allocation, redistribution et régulation', 1),
(601, 'Production, vente et distribution', 0),
(601, 'Épargne, crédit et investissement', 0),
(601, 'Législation, justice et défense uniquement', 0),
(602, 'Prélever impôts et cotisations et verser des prestations sociales pour réduire les inégalités', 1),
(602, 'Fixer le prix de tous les biens', 0),
(602, 'Produire tous les biens et services', 0),
(602, 'Accorder des crédits aux entreprises', 0),
(603, 'Le taux de croissance', 1),
(603, 'Le taux de chômage', 0),
(603, 'Le taux d’inflation', 0),
(603, 'Le taux directeur', 0),
(604, 'VA = production − consommations intermédiaires', 1),
(604, 'VA = production + consommations intermédiaires', 0),
(604, 'VA = chiffre d’affaires − salaires', 0),
(604, 'VA = exportations − importations', 0),
(605, 'Espérance de vie, éducation et revenu par habitant', 1),
(605, 'PIB, inflation et chômage', 0),
(605, 'Exportations, importations et dette', 0),
(605, 'Population, superficie et climat', 0),
(606, 'Parce qu’aucun acteur privé ne les produirait volontairement', 1),
(606, 'Parce que les entreprises n’ont pas le droit de les produire', 0),
(606, 'Parce qu’ils sont toujours très rentables', 0),
(606, 'Parce que les ménages refusent de les consommer', 0),
(607, 'La fonction d’allocation (défaillance de concurrence)', 1),
(607, 'La fonction de redistribution', 0),
(607, 'La fonction de régulation du chômage', 0),
(607, 'La fonction de contrôle des impôts', 0),
(608, 'L’asymétrie d’information', 1),
(608, 'Une externalité négative', 0),
(608, 'L’existence d’un monopole', 0),
(608, 'L’inflation trop forte', 0),
(609, 'Les produits deviennent plus chers donc moins attractifs, l’activité ralentit', 1),
(609, 'Les prix élevés augmentent mécaniquement la demande', 0),
(609, 'L’inflation fait baisser le coût du travail', 0),
(609, 'L’inflation supprime la concurrence étrangère', 0);

-- ---------- Chapitre 7 : L’influence des politiques économiques sur l’entreprise ----------
INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES (7, 7, 'Thème 2 : La régulation de l’activité économique', 'L’influence des politiques économiques sur l’entreprise', '<h3>I. Les outils des politiques économiques</h3>
<h4>A. Politique conjoncturelle (court terme)</h4>
<p><b>Politique budgétaire</b> : mesures utilisant le budget de l’État (voté par la <b>loi de finances</b>). Le <b>solde du budget</b> = recettes − dépenses (déficit ou excédent).</p>
<ul><li><b>Politique de relance</b> : soutenir l’activité (baisse de l’impôt sur les sociétés, baisse de l’impôt sur le revenu, hausse des allocations).</li><li><b>Politique de rigueur</b> : limiter les déficits et la dette, lutter contre l’inflation (réduction des dépenses publiques).</li></ul>
<p><b>Politique monétaire</b> : la banque centrale agit sur la quantité de monnaie et le financement de l’économie. Dans la zone euro, c’est la <b>BCE</b>. Son objectif principal est la <b>stabilité des prix</b> (inflation proche de 2 %). Son outil principal est le <b>taux directeur</b> : le baisser encourage le crédit (relance) ; le relever limite le crédit et contient l’inflation (rigueur).</p>
<h4>B. Politique structurelle (long terme)</h4>
<p>Elle agit sur les structures économiques et le fonctionnement des marchés : politique de la <b>concurrence</b>, de l’<b>emploi</b> (flexibilité du marché du travail), de l’<b>innovation</b> (R&D). Les objectifs sont définis au niveau européen (stratégie Europe 2020) et coordonnés par le <b>programme national de réforme (PNR)</b>.</p>
<h3>II. L’impact sur l’environnement des entreprises</h3>
<p><b>Politiques de l’offre</b> : aider les entreprises à produire mieux et moins cher (ex. : <b>CICE</b> en 2013, remplacé en 2019 par un allègement de cotisations patronales sur les bas salaires).</p>
<p><b>Politiques de la demande</b> : soutenir la consommation et l’investissement (grands travaux, baisse d’impôts, hausse de prestations sociales, baisse du taux directeur).</p>
<h3>III. Les limites de l’intervention de l’État</h3>
<ul>
<li><b>Contraintes budgétaires</b> : effet « boule de neige » de la dette, soutenabilité de la dette ; traité de <b>Maastricht</b> (déficit &lt; 3 % du PIB, dette &lt; 60 % du PIB) ; <b>règle d’or</b> (déficit structurel ≤ 0,5 % du PIB).</li>
<li><b>Mondialisation</b> : mobilité des capitaux (risque de fuite des capitaux si le taux directeur baisse), paradis fiscaux et évasion fiscale.</li>
</ul>');
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(701, 7, 1, 'Quelle institution mène la politique monétaire de la zone euro ?', 'La Banque centrale européenne (BCE) mène la politique monétaire pour les pays de l’UEM.'),
(702, 7, 1, 'Quel est l’objectif principal de la politique monétaire de la BCE ?', 'La BCE vise la stabilité des prix, avec une inflation inférieure mais proche de 2 %, pour garantir le pouvoir d’achat de la monnaie.'),
(703, 7, 1, 'Que désigne la politique budgétaire ?', 'La politique budgétaire regroupe les mesures prises par les pouvoirs publics pour réguler l’activité économique par l’utilisation de leur budget.'),
(704, 7, 2, 'Que fait la BCE dans le cadre d’une politique monétaire de relance ?', 'Elle diminue son taux directeur pour encourager la demande de crédits des ménages et des entreprises et favoriser la croissance.'),
(705, 7, 2, 'Quelles sont les deux contraintes du traité de Maastricht ?', 'Le traité de Maastricht (1992) impose un déficit public inférieur à 3 % du PIB et une dette publique inférieure à 60 % du PIB.'),
(706, 7, 2, 'Que visent les politiques de l’offre ?', 'Elles visent à relancer l’activité en permettant aux entreprises de produire mieux et moins cher, c’est-à-dire en facilitant leur activité (ex. : CICE).'),
(707, 7, 3, 'Que prévoit la règle d’or issue du pacte budgétaire de 2013 ?', 'La règle d’or impose que le déficit budgétaire structurel d’un pays ne dépasse pas 0,5 % de son PIB.'),
(708, 7, 3, 'Pourquoi une baisse du taux directeur peut-elle provoquer une fuite des capitaux dans une économie mondialisée ?', 'Les capitaux, très mobiles, se placent dans les pays où la rémunération est plus élevée, ce qui peut entraîner des difficultés de financement pour le pays d’origine.'),
(709, 7, 3, 'Qu’appelle-t-on l’effet « boule de neige » de la dette publique ?', 'L’État s’endette pour rembourser ses dettes : la charge d’intérêts (service de la dette) alimente elle-même l’endettement.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(701, 'La Banque centrale européenne (BCE)', 1),
(701, 'Le ministère de l’Économie', 0),
(701, 'La Commission européenne', 0),
(701, 'L’Autorité de la concurrence', 0),
(702, 'La stabilité des prix', 1),
(702, 'Réduire le chômage à zéro', 0),
(702, 'Équilibrer la balance commerciale', 0),
(702, 'Augmenter les impôts', 0),
(703, 'Les mesures utilisant le budget de l’État pour réguler l’activité', 1),
(703, 'La modulation du taux directeur par la banque centrale', 0),
(703, 'Les règles de concurrence entre entreprises', 0),
(703, 'Les réformes du droit du travail', 0),
(704, 'Elle diminue son taux directeur', 1),
(704, 'Elle augmente son taux directeur', 0),
(704, 'Elle supprime le crédit bancaire', 0),
(704, 'Elle augmente les impôts', 0),
(705, 'Déficit < 3 % du PIB et dette < 60 % du PIB', 1),
(705, 'Déficit < 0,5 % du PIB et dette < 20 % du PIB', 0),
(705, 'Inflation < 2 % et chômage < 5 %', 0),
(705, 'Croissance > 3 % et dette > 60 %', 0),
(706, 'Faciliter l’activité des entreprises pour qu’elles produisent mieux et moins cher', 1),
(706, 'Augmenter le pouvoir d’achat des ménages uniquement', 0),
(706, 'Réduire l’offre de monnaie', 0),
(706, 'Supprimer les entreprises peu rentables', 0),
(707, 'Un déficit structurel qui ne dépasse pas 0,5 % du PIB', 1),
(707, 'Une dette publique toujours nulle', 0),
(707, 'Un excédent budgétaire chaque année', 0),
(707, 'Un déficit public de 3 % maximum du PIB conjoncturel', 0),
(708, 'Les capitaux iront là où ils sont mieux rémunérés', 1),
(708, 'Les capitaux sont obligés de rester dans le pays', 0),
(708, 'Les banques refusent tout crédit', 0),
(708, 'Les taux d’intérêt deviennent négatifs pour toutes les entreprises', 0),
(709, 'L’État s’endette pour rembourser ses dettes, ce qui fait grossir la dette', 1),
(709, 'La dette disparaît rapidement grâce aux intérêts', 0),
(709, 'Les recettes fiscales augmentent automatiquement', 0),
(709, 'La dette est annulée par la BCE', 0);

-- ---------- Chapitre 8 : La régulation des activités économiques par le droit ----------
INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES (8, 8, 'Thème 2 : La régulation de l’activité économique', 'La régulation des activités économiques par le droit', '<h3>I. Les enjeux de la régulation</h3>
<p>La compétition entre entreprises favorise la croissance (meilleur coût, innovation, baisse des prix, emplois), mais le marché ne s’établit pas de lui-même : le droit ouvre les marchés (libéralisation des monopoles publics, libre entrée, transparence, sanction des pratiques anticoncurrentielles). La concurrence « porte en germes sa propre destruction » : le droit doit éviter la concentration de l’offre (monopoles, oligopoles).</p>
<h3>II. Les niveaux de régulation</h3>
<p><b>Droit français</b> : la <b>liberté du commerce et de l’industrie</b> (décret d’Allarde, 1791) comprend la liberté d’entreprendre, d’exploitation et de concurrence. Elle est limitée par des règles d’ordre public de <b>direction</b> (intérêt général, ex. : ouvrir une pharmacie) et de <b>protection</b> (ex. : consommateurs). La concurrence est surveillée par des <b>autorités administratives indépendantes</b> : l’<b>Autorité de la concurrence</b> (tous les marchés) et les autorités de régulation sectorielle.</p>
<p><b>Droit européen</b> : mis en œuvre par la <b>Commission européenne</b>, avec les autorités et tribunaux nationaux.</p>
<h3>III. La protection de la concurrence</h3>
<ul>
<li><b>Contrôle des concentrations</b> (fusions, acquisitions…) : autorisation préalable par la Commission européenne, l’Autorité de la concurrence et le ministre de l’Économie.</li>
<li><b>Ententes illicites</b> : accords entre concurrents qui faussent la concurrence (coordination des prix, répartition du marché) ; amendes ; <b>clémence</b> pour l’entreprise qui dénonce l’entente.</li>
<li><b>Abus de position dominante</b> : utiliser sa position de leader pour empêcher la concurrence ; amendes.</li>
</ul>
<h3>IV. La protection des acteurs du marché</h3>
<p><b>Concurrence déloyale</b> (responsabilité civile, dommages-intérêts) : <b>imitation</b> (confusion), <b>parasitisme</b>, <b>dénigrement</b>, <b>désorganisation</b>.</p>
<p><b>Pratiques restrictives</b> : rupture brutale des relations commerciales (sans préavis écrit), déséquilibre significatif dans le contrat ; dommages-intérêts et amende.</p>
<h3>V. La propriété industrielle</h3>
<ul>
<li><b>Brevet</b> : monopole temporaire d’exploitation de <b>20 ans</b> ; possibilité de licence d’exploitation.</li>
<li><b>Marque</b> : signe distinctif ; monopole de <b>10 ans renouvelable</b> indéfiniment.</li>
<li>Dépôt à l’<b>INPI</b> (France) ; <b>OEB</b> (brevets européens) ; <b>EUIPO</b> (marques de l’UE).</li>
<li><b>Contrefaçon</b> : sanction pénale, dommages-intérêts, cessation des actes et destruction des produits contrefaits.</li>
</ul>');
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(801, 8, 1, 'Quelle est la durée de protection d’un brevet ?', 'Le brevet confère un monopole temporaire d’exploitation de 20 ans.'),
(802, 8, 1, 'Quelle autorité française est compétente pour réguler la concurrence sur tous les marchés ?', 'L’Autorité de la concurrence, autorité administrative indépendante, est compétente sur tous les marchés. Les autorités sectorielles n’interviennent que sur un marché déterminé.'),
(803, 8, 1, 'Auprès de quel organisme dépose-t-on un brevet ou une marque en France ?', 'En France, le dépôt se fait auprès de l’Institut national de la propriété industrielle (INPI), qui délivre le titre de propriété industrielle.'),
(804, 8, 2, 'Qu’est-ce qu’une entente illicite ?', 'Ce sont des accords entre entreprises concurrentes qui ont pour objet ou pour effet de fausser la concurrence (par exemple en coordonnant leurs prix).'),
(805, 8, 2, 'En quoi consiste le dénigrement ?', 'Le dénigrement consiste à noircir, rabaisser ou discréditer la réputation d’un concurrent ou de ses produits pour capter sa clientèle.'),
(806, 8, 2, 'Quelle est la durée du monopole conféré par une marque ?', 'La marque donne un monopole de 10 ans, renouvelable indéfiniment.'),
(807, 8, 3, 'Une entreprise copie le nom et le logo d’un concurrent pour créer une confusion chez les clients. De quoi s’agit-il ?', 'C’est de l’imitation (ou confusion), un acte de concurrence déloyale sanctionné sur le terrain de la responsabilité civile.'),
(808, 8, 3, 'Une entreprise met fin brutalement à une relation commerciale, sans préavis écrit. Que peut-on dire ?', 'La rupture brutale des relations commerciales est une pratique restrictive de concurrence : l’entreprise doit réparer le préjudice (dommages-intérêts) et peut être condamnée à une amende.'),
(809, 8, 3, 'Que permet la clémence dans le cas d’une entente illicite ?', 'L’entreprise qui dénonce l’entente aux autorités peut bénéficier d’une réduction de l’amende, voire d’une exonération, ce qui facilite la détection de l’entente.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(801, '20 ans', 1),
(801, '5 ans', 0),
(801, '10 ans, renouvelable indéfiniment', 0),
(801, '50 ans', 0),
(802, 'L’Autorité de la concurrence', 1),
(802, 'L’INPI', 0),
(802, 'La Banque de France', 0),
(802, 'L’Office européen des brevets', 0),
(803, 'L’INPI', 1),
(803, 'L’EUIPO', 0),
(803, 'La Commission européenne', 0),
(803, 'Le CFE', 0),
(804, 'Un accord entre concurrents qui fausse la concurrence', 1),
(804, 'Une fusion autorisée par la Commission européenne', 0),
(804, 'Un contrat entre une entreprise et ses salariés', 0),
(804, 'Une licence de marque payante', 0),
(805, 'Discréditer la réputation d’un concurrent', 1),
(805, 'Imiter les signes distinctifs d’un concurrent', 0),
(805, 'Débaucher le personnel d’un concurrent', 0),
(805, 'Profiter des investissements d’un concurrent', 0),
(806, '10 ans, renouvelable indéfiniment', 1),
(806, '20 ans, non renouvelable', 0),
(806, '1 an, renouvelable une fois', 0),
(806, 'Elle est illimitée sans formalité', 0),
(807, 'Une concurrence déloyale par imitation', 1),
(807, 'Une entente illicite', 0),
(807, 'Un abus de position dominante', 0),
(807, 'Une opération de concentration', 0),
(808, 'C’est une pratique restrictive de concurrence', 1),
(808, 'C’est une entente illicite', 0),
(808, 'C’est une contrefaçon', 0),
(808, 'C’est une opération de concentration autorisée', 0),
(809, 'Réduire ou supprimer l’amende de l’entreprise qui dénonce l’entente', 1),
(809, 'Interdire à l’entreprise de poursuivre son activité', 0),
(809, 'Doubler l’amende de l’entreprise dénonciatrice', 0),
(809, 'Annuler automatiquement l’entente sans sanction pour personne', 0);

-- ---------- Chapitre 9 : L’environnement de l’entreprise ----------
INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES (9, 9, 'Thème 2 : La régulation de l’activité économique', 'L’environnement de l’entreprise', '<h3>I. Le macro-environnement</h3>
<p>L’<b>environnement</b> est l’ensemble des éléments externes qui influencent l’activité de l’entreprise. Le <b>macro-environnement</b> est l’environnement général (démographie, économie, réglementation, ressources naturelles, technologie, culture). Le <b>micro-environnement</b> est constitué des éléments proches qui influencent directement l’entreprise : salariés, clients, concurrents, fournisseurs, partenaires.</p>
<p>Le modèle <b>PESTEL</b> classe le macro-environnement en six axes :</p>
<ul><li><b>P</b>olitique (fiscalité, stabilité gouvernementale…) ;</li><li><b>É</b>conomique (conjoncture, inflation, pouvoir d’achat…) ;</li><li><b>S</b>ocioculturel (démographie, modes de vie, éducation…) ;</li><li><b>T</b>echnologique (innovation, R&amp;D, infrastructures…) ;</li><li><b>É</b>cologique (technologies vertes, réglementation environnementale…) ;</li><li><b>L</b>égal (droit de la concurrence, droit du travail, normes…).</li></ul>
<h3>II. Évolutions de l’environnement et conséquences</h3>
<p>Les évolutions sont sources de <b>menaces</b> (contraintes : guerre, crise économique…) et d’<b>opportunités</b> à repérer. La <b>veille</b> consiste à collecter et analyser les informations sur l’environnement pour anticiper.</p>
<p>L’<b>innovation</b> permet de faire face à un environnement complexe et incertain. Selon l’<b>OCDE</b>, il existe quatre types : innovation de <b>produit</b>, de <b>procédé</b> (production ou distribution), de <b>commercialisation</b> (conception, conditionnement, promotion, tarification) et d’<b>organisation</b>. Elle est source de <b>compétitivité</b> et d’avantage concurrentiel.</p>
<p>Pour <b>Schumpeter</b>, l’entrepreneur innovateur est au centre de la dynamique économique : une innovation majeure déclenche une « grappe d’innovations » et un processus de <b>destruction créatrice</b>.</p>');
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(901, 9, 1, 'Que signifie la lettre « L » dans le modèle PESTEL ?', 'PESTEL signifie Politique, Économique, Socioculturel, Technologique, Écologique et Légal.'),
(902, 9, 1, 'Qu’est-ce que le micro-environnement de l’entreprise ?', 'Le micro-environnement regroupe les éléments proches qui influencent directement l’entreprise : salariés, clients, concurrents, fournisseurs, partenaires.'),
(903, 9, 1, 'Quel est le rôle de la veille ?', 'La veille consiste à collecter et analyser les informations sur l’environnement pour en déduire les menaces et opportunités de développement.'),
(904, 9, 2, 'En quoi consiste une innovation de procédé ?', 'L’innovation de procédé est la mise en œuvre d’une méthode de production ou de distribution nouvelle ou sensiblement améliorée.'),
(905, 9, 2, 'En quoi consiste une innovation de commercialisation ?', 'Elle consiste à appliquer une nouvelle méthode de commercialisation : changements significatifs de conception, conditionnement, placement, promotion ou tarification.'),
(906, 9, 2, 'Comment qualifie-t-on une contrainte de l’environnement comme une crise économique ?', 'Les contraintes (guerre, attentat, crise économique…) s’imposent à l’entreprise, qui ne peut pas agir sur elles : ce sont des menaces à identifier pour en réduire les incertitudes.'),
(907, 9, 3, 'Le vieillissement de la population est un facteur de quel axe de PESTEL ?', 'Le vieillissement relève de la dimension démographique de l’axe socioculturel (S).'),
(908, 9, 3, 'Une entreprise adopte une nouvelle organisation du lieu de travail. Quel type d’innovation est-ce ?', 'L’innovation d’organisation consiste à appliquer une nouvelle méthode organisationnelle dans les pratiques, le lieu de travail ou les relations extérieures.'),
(909, 9, 3, 'Que désigne la « destruction créatrice » chez Schumpeter ?', 'Une innovation majeure déclenche une grappe d’innovations qui bouscule l’équilibre économique : les nouvelles activités remplacent les anciennes.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(901, 'Légal', 1),
(901, 'Local', 0),
(901, 'Logistique', 0),
(901, 'Libéral', 0),
(902, 'Les éléments proches qui l’influencent directement (clients, concurrents, fournisseurs…)', 1),
(902, 'Les caractéristiques générales de l’économie mondiale', 0),
(902, 'Uniquement les salariés de l’entreprise', 0),
(902, 'Les règles du droit international', 0),
(903, 'Collecter et analyser des informations pour repérer menaces et opportunités', 1),
(903, 'Sanctionner les concurrents déloyaux', 0),
(903, 'Fixer les prix des produits', 0),
(903, 'Recruter de nouveaux salariés', 0),
(904, 'Une méthode de production ou de distribution nouvelle ou améliorée', 1),
(904, 'Un produit entièrement nouveau', 0),
(904, 'Une nouvelle méthode de promotion ou de tarification', 0),
(904, 'Une nouvelle organisation du lieu de travail', 0),
(905, 'Une nouvelle méthode de conditionnement, promotion ou tarification', 1),
(905, 'Une nouvelle machine de production', 0),
(905, 'Un nouvel organigramme', 0),
(905, 'Un nouveau statut juridique', 0),
(906, 'Une menace', 1),
(906, 'Une opportunité', 0),
(906, 'Une innovation', 0),
(906, 'Un avantage concurrentiel', 0),
(907, 'L’axe socioculturel', 1),
(907, 'L’axe politique', 0),
(907, 'L’axe technologique', 0),
(907, 'L’axe légal', 0),
(908, 'Une innovation d’organisation', 1),
(908, 'Une innovation de produit', 0),
(908, 'Une innovation de procédé', 0),
(908, 'Une innovation de commercialisation', 0),
(909, 'Le processus par lequel une innovation majeure bouscule l’économie et en fait émerger de nouvelles activités', 1),
(909, 'La destruction volontaire des anciens produits invendus', 0),
(909, 'La disparition de toute concurrence sur un marché', 0),
(909, 'Une sanction contre les entreprises innovantes', 0);

-- ---------- Chapitre 10 : Les choix de production de l’entreprise ----------
INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES (10, 10, 'Thème 3 : L’organisation de l’activité de l’entreprise', 'Les choix de production de l’entreprise', '<h3>I. La structure de coût</h3>
<h4>A. Les facteurs de production</h4>
<ul>
<li><b>Travail</b> : fourni par les ménages contre un salaire (population active = actifs occupés + chômeurs).</li>
<li><b>Capital</b> : le <b>capital technique</b> (machines, bâtiments, véhicules) est le facteur de production ; le capital financier sert à financer l’activité.</li>
<li><b>Naturel</b> : ressources non renouvelables (minéraux, combustibles fossiles) ou renouvelables (terre, forêts).</li>
<li><b>Connaissances</b> : <b>R&amp;D</b> = recherche fondamentale (découverte) + recherche appliquée (invention) + développement (prototype).</li>
</ul>
<h4>B. Les coûts de production</h4>
<p><b>Coûts fixes</b> : indépendants des quantités produites (bâtiments, machines, salaires). <b>Coûts variables</b> : varient avec la production (matières premières, énergie, carburant). Le <b>coût du travail</b> = salaire brut + cotisations patronales ; s’il est élevé, l’entreprise peut licencier, substituer du capital au travail ou délocaliser.</p>
<h3>II. L’influence des coûts sur les décisions</h3>
<p>La <b>combinaison productive</b> peut être à <b>forte intensité capitalistique</b> (beaucoup de capital, peu de travail) ou à <b>faible intensité capitalistique</b>. Elle dépend du coût relatif du travail et du capital.</p>
<p><b>Productivité du travail = quantité produite (ou richesse créée) / quantité de travail utilisée</b> (en volume ou en valeur ajoutée). Les entreprises recherchent des <b>gains de productivité</b>.</p>
<p>Le <b>taux d’intérêt</b> est le coût du crédit pour l’emprunteur ; il dépend du <b>taux directeur</b> de la banque centrale et représente un coût pour l’entreprise qui emprunte pour investir.</p>
<h3>III. « Faire » ou « faire faire »</h3>
<p>La <b>chaîne de valeur</b> (<b>Porter</b>) distingue les <b>activités principales</b> (logistique interne, production, logistique externe, commercialisation et vente, SAV) et les <b>activités de soutien</b> (approvisionnements, développement technologique, GRH, infrastructure). L’entreprise garde les activités créatrices de valeur et externalise les autres (ex. : Zara garde la conception, externalise la production de vêtements basiques).</p>
<p><b>Développement durable</b> : répond aux besoins du présent sans compromettre ceux des générations futures (Brundtland, 1987) ; trois piliers officialisés au Sommet de Rio (1992) : économie, écologie, social. C’est de plus en plus un avantage concurrentiel.</p>
<p><b>Externalisation / sous-traitance</b> (« faire faire ») : réduction des coûts, meilleure qualité, concentration sur le cœur de métier, flexibilité. <b>Risques</b> : dépendance vis-à-vis des prestataires (ex. : retards du Boeing 787), perte de compétences stratégiques, coût social.</p>');
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(1001, 10, 1, 'Lequel de ces coûts est un coût variable ?', 'Un coût variable évolue avec les quantités produites (matières premières, énergie). Bâtiments, machines et salaires sont des coûts fixes.'),
(1002, 10, 1, 'Comment calcule-t-on la productivité du travail ?', 'La productivité du travail compare la production réalisée (ou la richesse créée) à la quantité de travail utilisée.'),
(1003, 10, 1, 'Qui a élaboré le concept de chaîne de valeur ?', 'La chaîne de valeur a été élaborée par Michael Porter pour analyser les activités clés de l’entreprise.'),
(1004, 10, 2, 'Que signifie une combinaison productive à forte intensité capitalistique ?', 'L’entreprise utilise beaucoup le facteur capital et relativement peu le facteur travail.'),
(1005, 10, 2, 'Lesquelles sont des activités de soutien dans la chaîne de valeur ?', 'Les activités de soutien sont les approvisionnements, le développement technologique, la gestion des ressources humaines et l’infrastructure de la firme.'),
(1006, 10, 2, 'Que vise la recherche appliquée ?', 'La recherche appliquée vise à trouver des applications aux connaissances (invention). La recherche fondamentale améliore les connaissances (découverte).'),
(1007, 10, 3, 'Les salaires sont relativement faibles dans un pays. Quelle combinaison productive l’entreprise a-t-elle intérêt à choisir ?', 'Quand les salaires sont faibles, l’entreprise a intérêt à utiliser des techniques peu intensives en capital, donc davantage de main-d’œuvre.'),
(1008, 10, 3, 'Pourquoi Zara externalise-t-elle la production de vêtements basiques tout en gardant la conception ?', 'La conception est une activité créatrice de valeur et source d’avantage concurrentiel : Zara la garde, et externalise les activités qui créent peu de valeur.'),
(1009, 10, 3, 'Quel risque de l’externalisation illustre le retard de livraison des Boeing 787 ?', 'Les sous-traitants n’ayant pas respecté les délais, Boeing a dû retarder ses livraisons : l’externalisation crée une dépendance vis-à-vis des prestataires.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(1001, 'Le coût des matières premières', 1),
(1001, 'Le loyer des bâtiments', 0),
(1001, 'L’amortissement des machines', 0),
(1001, 'Les salaires du personnel permanent', 0),
(1002, 'Quantité produite / quantité de travail utilisée', 1),
(1002, 'Quantité de travail utilisée / quantité produite', 0),
(1002, 'Chiffre d’affaires − coûts fixes', 0),
(1002, 'Salaire brut + cotisations patronales', 0),
(1003, 'Michael Porter', 1),
(1003, 'Joseph Schumpeter', 0),
(1003, 'Peter Drucker', 0),
(1003, 'Nicholas Kaldor', 0),
(1004, 'Beaucoup de capital et relativement peu de travail', 1),
(1004, 'Beaucoup de travail et peu de capital', 0),
(1004, 'Uniquement des ressources naturelles', 0),
(1004, 'Aucun facteur de production', 0),
(1005, 'Approvisionnements, développement technologique, GRH, infrastructure', 1),
(1005, 'Production, logistique externe, vente, SAV', 0),
(1005, 'Uniquement la production et la vente', 0),
(1005, 'Le recrutement et la publicité seulement', 0),
(1006, 'Trouver des applications aux connaissances (invention)', 1),
(1006, 'Améliorer les connaissances sans objectif d’application', 0),
(1006, 'Mettre au point un prototype avant la production', 0),
(1006, 'Mesurer les dépenses de R&D', 0),
(1007, 'Des techniques peu intensives en capital', 1),
(1007, 'Des techniques très intensives en capital', 0),
(1007, 'Aucune main-d’œuvre', 0),
(1007, 'Uniquement des ressources naturelles', 0),
(1008, 'Elle garde les activités créatrices de valeur et externalise les autres', 1),
(1008, 'Elle ne sait pas fabriquer de vêtements', 0),
(1008, 'La loi interdit de produire soi-même', 0),
(1008, 'Elle veut dépendre le plus possible de ses prestataires', 0),
(1009, 'La dépendance vis-à-vis des prestataires', 1),
(1009, 'Le coût trop élevé du travail', 0),
(1009, 'La baisse de la demande', 0),
(1009, 'La disparition des coûts fixes', 0);

-- ---------- Chapitre 11 : Le choix de la structure juridique de l’entreprise ----------
INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES (11, 11, 'Thème 3 : L’organisation de l’activité de l’entreprise', 'Le choix de la structure juridique de l’entreprise', '<h3>I. Les considérations patrimoniales</h3>
<p><b>Entreprise individuelle</b> : conception classique = confusion des patrimoines (responsabilité illimitée). Avantages : maîtrise de la gestion, simplicité de création, micro-entreprise possible. Évolution : l’<b>EIRL</b> (2010, patrimoine d’affectation, relatif échec) puis le <b>nouveau statut</b> de l’entreprise individuelle : patrimoine personnel et professionnel distincts, sans formalité, seul le patrimoine professionnel pouvant être saisi par les créanciers professionnels.</p>
<p><b>Forme sociétaire</b> : création d’une personne morale avec son propre patrimoine. SARL, EURL, SA, SAS, SASU : la responsabilité est <b>limitée aux apports</b>. Mais un banquier peut exiger une <b>caution</b> personnelle du dirigeant, qui assume alors le risque.</p>
<p><b>Régime matrimonial</b> : en <b>communauté légale</b>, les biens acquis après le mariage sont communs et répondent des dettes professionnelles ; en <b>séparation de biens</b>, les biens de chaque époux sont dissociés et le conjoint est protégé.</p>
<h3>II. Les statuts social et fiscal</h3>
<p><b>Statut social</b> : le dirigeant est « <b>assimilé salarié</b> » s’il est gérant non majoritaire de SARL ou dirigeant d’une société de capitaux ; les autres sont des <b>travailleurs indépendants</b> (entrepreneur individuel, associé unique d’EURL, gérant majoritaire de SARL).</p>
<p><b>Statut fiscal</b> : <b>IR</b> (impôt sur le revenu, barème progressif, tranche supérieure 45 %) ou <b>IS</b> (impôt sur les sociétés, proportionnel : 25 %, ou 15 % jusqu’à 38 120 € de bénéfices pour les petites sociétés). Entreprise individuelle : IR. EURL : IR (option IS possible). SARL : IS (option IR possible pour une société de famille). SA, SAS, SASU : IS.</p>
<h3>III. Fonctionnement et évolution</h3>
<p>L’entrepreneur individuel (et les sociétés unipersonnelles EURL, SASU) détient le pouvoir seul. Dans les autres sociétés, les droits de vote en assemblée générale sont <b>proportionnels aux apports</b>. La <b>SAS</b> est souple : les statuts sont la source première des règles. Pour se financer, les structures qui rassemblent des capitaux importants (SA, SAS) obtiennent plus facilement des crédits ou une introduction en Bourse ; les PME et entreprises individuelles voient souvent le crédit conditionné à un engagement personnel du dirigeant.</p>
<h3>IV. L’économie sociale et solidaire (ESS)</h3>
<p>L’ESS privilégie la solidarité et l’utilité sociale plutôt que le profit, avec une gestion démocratique. <b>SCOP</b> (sociétés coopératives et participatives) : salariés associés détenant <b>au moins 51 %</b> du capital et participant aux décisions. <b>Mutuelles</b> : les clients sont des membres qui financent l’activité par leurs cotisations ; elles assurent leurs membres (complémentaire santé).</p>');
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(1101, 11, 1, 'Jusqu’à quel montant la responsabilité d’un associé de SARL est-elle engagée ?', 'Dans les sociétés commerciales comme la SARL, la responsabilité des associés et du dirigeant est limitée au montant des apports faits au capital.'),
(1102, 11, 1, 'Quelle part minimale du capital les salariés détiennent-ils dans une SCOP ?', 'Dans une SCOP, les salariés sont associés et disposent d’au moins 51 % du capital social.'),
(1103, 11, 1, 'Quel est le rôle d’une mutuelle ?', 'Les mutuelles assurent leurs membres face à divers risques et jouent le rôle de « complémentaire santé » en complétant les remboursements de la Sécurité sociale.'),
(1104, 11, 2, 'Que se passe-t-il en régime de communauté légale ?', 'Les biens acquis à titre onéreux après le mariage sont communs aux deux époux et répondent tous des dettes professionnelles.'),
(1105, 11, 2, 'Comment fonctionne l’impôt sur les sociétés (IS) ?', 'L’IS est un prélèvement proportionnel, en principe 25 %, avec un taux minoré de 15 % sur la fraction inférieure à 38 120 € pour les petites sociétés.'),
(1106, 11, 2, 'Quelle est la source première des règles de fonctionnement d’une SAS ?', 'La SAS est marquée par la souplesse de son fonctionnement : ses statuts constituent la source première des règles qui s’appliquent à elle.'),
(1107, 11, 3, 'Le dirigeant d’une SARL se porte caution pour un prêt bancaire de sa société. Quelle est la conséquence ?', 'En se portant caution, il s’engage à payer personnellement en cas de défaillance de la société : il assume le risque et atténue l’avantage de la responsabilité limitée.'),
(1108, 11, 3, 'Un gérant non majoritaire de SARL relève de quel statut social ?', 'Le gérant non majoritaire de SARL est « assimilé salarié » et bénéficie d’assurances sociales très complètes.'),
(1109, 11, 3, 'Comment est imposé le bénéfice d’une entreprise individuelle ?', 'En entreprise individuelle, il n’y a pas d’imposition au niveau de l’entreprise : l’entrepreneur est imposé directement à l’impôt sur le revenu (IR).');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(1101, 'Au montant de ses apports', 1),
(1101, 'À la totalité de son patrimoine personnel', 0),
(1101, 'Au double de son apport', 0),
(1101, 'Elle n’est jamais engagée', 0),
(1102, 'Au moins 51 %', 1),
(1102, 'Au moins 10 %', 0),
(1102, 'Exactement 25 %', 0),
(1102, '100 % obligatoirement', 0),
(1103, 'Assurer ses membres, notamment en complémentaire santé', 1),
(1103, 'Distribuer des dividendes à des actionnaires extérieurs', 0),
(1103, 'Produire des biens industriels', 0),
(1103, 'Contrôler la concurrence entre entreprises', 0),
(1104, 'Les biens acquis après le mariage sont communs et répondent des dettes professionnelles', 1),
(1104, 'Les biens de chaque époux restent strictement séparés', 0),
(1104, 'Seul le conjoint non entrepreneur est protégé', 0),
(1104, 'Les dettes professionnelles ne concernent jamais les biens du couple', 0),
(1105, 'Un prélèvement proportionnel (25 % en principe)', 1),
(1105, 'Un barème progressif dont la tranche supérieure est de 45 %', 0),
(1105, 'Un impôt payé uniquement par les salariés', 0),
(1105, 'Un impôt qui n’existe pas pour les SARL', 0),
(1106, 'Ses statuts', 1),
(1106, 'Le Code pénal', 0),
(1106, 'Le règlement de la Bourse', 0),
(1106, 'Le régime matrimonial du dirigeant', 0),
(1107, 'Il assume personnellement le risque de défaillance de la société', 1),
(1107, 'Sa responsabilité est encore plus limitée', 0),
(1107, 'La banque supporte seule le risque', 0),
(1107, 'La société devient une entreprise individuelle', 0),
(1108, 'Assimilé salarié', 1),
(1108, 'Travailleur indépendant', 0),
(1108, 'Fonctionnaire', 0),
(1108, 'Associé d’une SCOP obligatoirement', 0),
(1109, 'L’entrepreneur est imposé directement à l’IR', 1),
(1109, 'L’entreprise paie l’IS à 25 %', 0),
(1109, 'Il n’y a aucun impôt sur les bénéfices', 0),
(1109, 'L’impôt est payé uniquement par les clients', 0);
