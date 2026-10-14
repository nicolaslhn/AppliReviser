-- ============================================================
--  CHAPITRES 12 à 15 : cours + questions
--  À importer dans phpMyAdmin APRÈS quiz_cours.sql (ne supprime rien).
--  Identifiants des questions : numéro du chapitre x 100 + n (ex. 1201, 1202…).
-- ============================================================
USE quiz_cours;

-- ---------- Chapitre 12 : La gestion des risques liés à l’activité de l’entreprise ----------
INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES (12, 12, 'Thème 3 : L’organisation de l’activité de l’entreprise', 'La gestion des risques liés à l’activité de l’entreprise', '<h3>I. Les risques de l’entreprise</h3>
<p>Risques variés : incendie, inondation, accidents du travail liés aux machines, risques liés aux transports, risques « économiques » comme le piratage informatique. Les salariés subissent des <b>risques physiques</b> (accidents du travail, maladies professionnelles) et des <b>risques psychosociaux</b> (stress, burn-out). L’employeur est tenu d’une <b>obligation de sécurité de résultat</b> : tout accident du travail ou maladie professionnelle est une inexécution fautive du contrat dont il est responsable.</p>
<h3>II. Responsabilité civile et responsabilité pénale</h3>
<ul>
<li><b>Responsabilité civile</b> : l’auteur d’un dommage à autrui doit le réparer. <b>Contractuelle</b> (inexécution ou mauvaise exécution d’un contrat) ou <b>extracontractuelle</b> (faute d’une personne, fait d’une chose ou d’une personne dont on répond).</li>
<li><b>Responsabilité pénale</b> : engagée quand une infraction trouble l’ordre social ; elle sanctionne l’auteur par une <b>peine</b> (amende, emprisonnement).</li>
</ul>
<p>Si un acte est à la fois un préjudice et une infraction, la victime peut agir au civil (réparation seule) ou au pénal (réparation + condamnation de l’auteur).</p>
<h3>III. Les principes de la responsabilité civile</h3>
<p>Trois éléments : un <b>fait dommageable</b>, un <b>dommage</b> subi par la victime, un <b>lien de causalité</b> entre les deux (le droit ne retient que le dommage direct).</p>
<p>La <b>force majeure</b> exonère totalement l’auteur apparent du dommage ; elle doit être <b>insurmontable</b>, <b>imprévisible</b> et <b>extérieure</b> au défendeur.</p>
<p>Les dommages : <b>corporel</b> (atteinte à l’intégrité physique), <b>matériel</b> (destruction d’une chose, perte économique, manque à gagner, perte d’une chance), <b>moral</b> (honneur, image, vie privée, préjudice d’agrément, sentiment d’affection), <b>écologique</b> (reconnu par la loi du 8 août 2016 : atteinte non négligeable à l’écosystème).</p>
<p>La réparation est <b>en nature</b> (rare) ou <b>par équivalent</b> (dommages-intérêts) : réparation du préjudice tout entier, mais du seul préjudice.</p>
<h3>IV. La responsabilité contractuelle</h3>
<p>Elle naît d’une <b>faute contractuelle</b> : inexécution totale, exécution défectueuse, partielle ou en retard.</p>
<ul>
<li><b>Obligation de résultat</b> (ex. : transporter une personne) : le créancier prouve seulement l’inexécution et le dommage ; la faute est <b>présumée</b>, seule la force majeure exonère. L’employeur a une obligation de résultat pour la sécurité de ses salariés.</li>
<li><b>Obligation de moyens</b> (ex. : guérir un malade) : le créancier doit prouver l’inexécution, le dommage <b>et la faute</b> ; le débiteur se libère en prouvant l’absence de faute.</li>
</ul>
<h3>V. La responsabilité extracontractuelle</h3>
<ul>
<li><b>Faute personnelle</b> (volontaire ou d’imprudence) : responsabilité <b>subjective</b>.</li>
<li><b>Fait d’une chose ou d’une personne dont on répond</b> (ex. : l’employeur pour son salarié) : responsabilité <b>objective</b>, sans faute.</li>
<li><b>Produits défectueux</b> (articles 1245 et suivants du Code civil) : le <b>producteur</b> (au sens large : fabricant, vendeur sous sa marque, importateur en Europe, producteur de composant) est responsable, sans faute, d’un produit qui ne présente pas la sécurité légitimement attendue. Toutes les victimes sont protégées (consommateurs et professionnels). Sont couverts les dommages aux personnes et aux biens (au-delà de 500 €), pas le défaut du produit lui-même.</li>
</ul>');
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(1201, 12, 1, 'Que doit faire l’auteur d’un dommage causé à autrui en matière de responsabilité civile ?', 'La responsabilité civile oblige l’auteur d’un dommage à le réparer.'),
(1202, 12, 1, 'Quels sont les trois éléments nécessaires pour engager la responsabilité civile ?', 'La responsabilité civile suppose un fait dommageable, un dommage et un lien de causalité entre les deux.'),
(1203, 12, 1, 'De quel type est l’obligation de sécurité de l’employeur envers ses salariés ?', 'Les juges estiment que l’employeur est tenu d’une obligation de sécurité de résultat envers ses salariés.'),
(1204, 12, 2, 'Quelles sont les trois caractéristiques de la force majeure ?', 'Pour exonérer totalement l’auteur apparent du dommage, la force majeure doit être insurmontable, imprévisible et extérieure au défendeur.'),
(1205, 12, 2, 'Que sanctionne la responsabilité pénale ?', 'La responsabilité pénale est engagée quand une infraction trouble l’ordre social ; elle sanctionne l’auteur par une peine (amende ou emprisonnement).'),
(1206, 12, 2, 'Dans une obligation de moyens, que doit prouver le créancier pour engager la responsabilité du débiteur ?', 'Le créancier doit prouver l’inexécution, le dommage et la faute du débiteur. Le débiteur peut se libérer en prouvant l’absence de faute.'),
(1207, 12, 3, 'Un salarié cause un dommage à un tiers dans l’exercice de ses fonctions. Que peut-on dire de la responsabilité de l’employeur ?', 'L’employeur (commettant) répond des faits de son salarié (préposé) : c’est une responsabilité objective, qui ne repose sur aucune faute de sa part.'),
(1208, 12, 3, 'Un enfant est blessé par un jouet fabriqué dans un tissu inflammable. Quel régime s’applique au producteur ?', 'Le jouet ne présente pas la sécurité légitimement attendue : le producteur est responsable du fait des produits défectueux, sans qu’une faute soit nécessaire.'),
(1209, 12, 3, 'Un sportif, blessé à cause d’une faute, ne peut plus pratiquer son sport. De quel préjudice s’agit-il ?', 'Le préjudice d’agrément prolonge un dommage corporel : il consiste dans la privation de certains plaisirs de la vie, comme la pratique d’un sport. Il relève du dommage moral.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(1201, 'Réparer le dommage causé', 1),
(1201, 'Purger une peine de prison dans tous les cas', 0),
(1201, 'Payer un impôt supplémentaire à l’État', 0),
(1201, 'Fermer son entreprise', 0),
(1202, 'Un fait dommageable, un dommage et un lien de causalité', 1),
(1202, 'Une faute, une amende et un jugement', 0),
(1202, 'Un contrat, un salarié et un témoin', 0),
(1202, 'Un préjudice moral, un expert et un avocat', 0),
(1203, 'Une obligation de résultat', 1),
(1203, 'Une obligation de moyens', 0),
(1203, 'Une simple recommandation', 0),
(1203, 'Une obligation uniquement morale', 0),
(1204, 'Insurmontable, imprévisible et extérieure', 1),
(1204, 'Volontaire, prévisible et interne', 0),
(1204, 'Gratuite, certaine et durable', 0),
(1204, 'Locale, temporaire et réparable', 0),
(1205, 'Une infraction, par une peine (amende ou emprisonnement)', 1),
(1205, 'Un simple retard de paiement, par des dommages-intérêts', 0),
(1205, 'Une inexécution de contrat, par une réparation en nature', 0),
(1205, 'Tout dommage matériel, par une assurance', 0),
(1206, 'L’inexécution, le dommage et la faute du débiteur', 1),
(1206, 'Uniquement le dommage', 0),
(1206, 'Uniquement l’inexécution', 0),
(1206, 'Rien : la faute est toujours présumée', 0),
(1207, 'Il est responsable sans faute (responsabilité objective)', 1),
(1207, 'Il n’est jamais responsable', 0),
(1207, 'Il n’est responsable que s’il a commis une faute personnelle', 0),
(1207, 'Seule la responsabilité pénale du salarié peut être engagée', 0),
(1208, 'La responsabilité du fait des produits défectueux, sans faute', 1),
(1208, 'Aucune responsabilité car il n’y a pas de contrat avec l’enfant', 0),
(1208, 'Une responsabilité fondée uniquement sur la faute prouvée', 0),
(1208, 'Une responsabilité pénale automatique', 0),
(1209, 'Un préjudice d’agrément (dommage moral)', 1),
(1209, 'Un dommage écologique', 0),
(1209, 'Un dommage matériel par destruction d’une chose', 0),
(1209, 'Une perte de chance de passer un examen', 0);

-- ---------- Chapitre 13 : Styles de management et contre-pouvoirs ----------
INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES (13, 13, 'Thème 3 : L’organisation de l’activité de l’entreprise', 'Styles de management et contre-pouvoirs', '<h3>I. Les styles de management</h3>
<p>Le style de management est la manière dont le manager exerce son rôle : de <b>directif</b> (contrainte pour obtenir la performance) à <b>convivial</b> (individus qui cherchent à se réaliser dans leur travail). <b>Rensis Likert</b> identifie quatre styles :</p>
<ul>
<li><b>Autoritaire et exploiteur</b> : directif, intimidation et soumission, décisions au sommet sans consultation, communication descendante, menaces et sanctions → stress, peu de motivation.</li>
<li><b>Paternaliste (persuasif)</b> : directif, mais avec plus de confiance ; le manager est le « bon père de famille » ; sanctions et récompenses ; sentiment d’appartenance.</li>
<li><b>Consultatif</b> : confiance ; le manager <b>consulte</b> ses collaborateurs avant de décider ; communication horizontale et verticale ; implication et responsabilisation ; bon climat social.</li>
<li><b>Participatif</b> : forte confiance, liens hiérarchiques distendus ; décisions <b>collégiales</b> via des groupes de travail ; responsabilités déléguées, pouvoir décentralisé ; créativité et esprit entrepreneurial.</li>
</ul>
<p>Selon Likert, le style <b>participatif</b> contribue le plus à l’efficacité des processus et à la performance de l’entreprise.</p>
<h3>II. Parties prenantes et contre-pouvoirs</h3>
<p>Les <b>parties prenantes</b> ont un intérêt dans l’activité de l’entreprise et exercent une influence plus ou moins directe. Pour <b>Crozier et Friedberg</b> (théorie de l’<b>acteur stratégique</b>), tout acteur peut détenir une part de pouvoir, qu’il utilise pour servir ses propres objectifs ; le pouvoir n’est pas lié automatiquement à une position hiérarchique supérieure. Celui qui maîtrise les <b>zones d’incertitude</b> (ce qui n’est pas précisément réglementé ou formalisé : savoir-faire, expérience, information) détient la plus grande source de pouvoir : il se rend irremplaçable.</p>
<p>Les acteurs peuvent agir en <b>contre-pouvoir</b> si leurs intérêts sont menacés, en bloquant les décisions des dirigeants.</p>
<p>Les entreprises engagées dans une démarche de <b>RSE</b> sont transparentes envers leurs parties prenantes et intègrent l’ensemble de leurs intérêts, à l’opposé des entreprises dont la seule finalité est le profit à court terme pour les actionnaires.</p>');
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(1301, 13, 1, 'Quel style de management repose sur l’intimidation, la soumission et une communication descendante ?', 'C’est le style autoritaire et exploiteur de Likert : décisions prises au sommet sans discussion, avec un système de menaces et de sanctions.'),
(1302, 13, 1, 'Quel style de management correspond à la posture du « bon père de famille » ?', 'Le style paternaliste (ou persuasif) est directif mais le manager fait davantage confiance ; il contrôle et motive par sanctions et récompenses.'),
(1303, 13, 1, 'Selon Likert, quel style contribue le plus à la performance de l’entreprise ?', 'Pour Likert, le style participatif reconnaît les compétences de chacun et l’intègre dans la prise de décision : il contribue davantage à la performance.'),
(1304, 13, 2, 'Quelle est la caractéristique du style consultatif ?', 'Le manager consulte ses collaborateurs avant de prendre sa décision ; il s’appuie sur l’implication et la responsabilisation de chacun.'),
(1305, 13, 2, 'Comment sont prises les décisions dans le style participatif ?', 'Les collaborateurs sont fortement impliqués : les décisions sont prises de manière collégiale par le biais de groupes de travail, avec un pouvoir de décision décentralisé.'),
(1306, 13, 2, 'Selon Crozier et Friedberg, qu’est-ce qui constitue une source de pouvoir dans l’entreprise ?', 'Celui qui maîtrise les zones d’incertitude (ce qui n’est pas précisément formalisé : savoir-faire, expérience, information) détient une source de pouvoir.'),
(1307, 13, 3, 'Un salarié est le seul à maîtriser un savoir-faire indispensable au fonctionnement de l’entreprise. Que peut-on en conclure ?', 'Il maîtrise une zone d’incertitude importante : il se rend irremplaçable et accroît la dépendance de l’entreprise à son égard, même sans position hiérarchique élevée.'),
(1308, 13, 3, 'Des salariés bloquent une décision de la direction qui menace leurs intérêts. De quoi s’agit-il ?', 'Les acteurs peuvent agir en contre-pouvoir quand leurs intérêts sont menacés, en déployant des actions susceptibles de bloquer les décisions des dirigeants.'),
(1309, 13, 3, 'Qu’est-ce qui distingue une entreprise engagée dans la RSE d’une entreprise centrée sur le profit à court terme ?', 'L’entreprise engagée dans la RSE est transparente envers ses parties prenantes et intègre l’ensemble de leurs intérêts dans ses décisions, pas seulement ceux des actionnaires.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(1301, 'Le style autoritaire et exploiteur', 1),
(1301, 'Le style consultatif', 0),
(1301, 'Le style participatif', 0),
(1301, 'Le style paternaliste', 0),
(1302, 'Le style paternaliste', 1),
(1302, 'Le style autoritaire et exploiteur', 0),
(1302, 'Le style participatif', 0),
(1302, 'Le style consultatif', 0),
(1303, 'Le style participatif', 1),
(1303, 'Le style autoritaire et exploiteur', 0),
(1303, 'Le style paternaliste', 0),
(1303, 'Aucun : le style n’a pas d’influence', 0),
(1304, 'Le manager consulte ses collaborateurs avant de décider', 1),
(1304, 'Les décisions sont prises uniquement au sommet, sans consultation', 0),
(1304, 'Les décisions sont prises collégialement par des groupes de travail', 0),
(1304, 'Le manager n’a plus aucun rôle de décision', 0),
(1305, 'De manière collégiale, par des groupes de travail', 1),
(1305, 'Par le dirigeant seul, sans discussion', 0),
(1305, 'Par le manager après une simple consultation', 0),
(1305, 'Par l’État', 0),
(1306, 'La maîtrise des zones d’incertitude', 1),
(1306, 'Uniquement la position hiérarchique', 0),
(1306, 'Le nombre de salariés dirigés', 0),
(1306, 'Le montant du capital détenu', 0),
(1307, 'Il détient du pouvoir malgré l’absence de position hiérarchique élevée', 1),
(1307, 'Il n’a aucun pouvoir car il n’est pas dirigeant', 0),
(1307, 'Son pouvoir vient uniquement de son salaire', 0),
(1307, 'Il est forcément un contre-pouvoir syndical', 0),
(1308, 'D’un contre-pouvoir', 1),
(1308, 'D’un style de management paternaliste', 0),
(1308, 'D’une innovation d’organisation', 0),
(1308, 'D’une démarche de RSE de l’actionnaire', 0),
(1309, 'Elle intègre les intérêts de toutes ses parties prenantes dans ses décisions', 1),
(1309, 'Elle ne cherche aucun profit', 0),
(1309, 'Elle ne tient compte que des actionnaires', 0),
(1309, 'Elle refuse toute relation avec les syndicats', 0);

-- ---------- Chapitre 14 : L’organisation des ressources dans l’entreprise ----------
INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES (14, 14, 'Thème 3 : L’organisation de l’activité de l’entreprise', 'L’organisation des ressources dans l’entreprise', '<h3>I. Ressources et compétences</h3>
<p><b>Actifs tangibles</b> (identifiables et quantifiables) : ressources <b>financières</b> (autofinancement, capital, trésorerie, résultat net…), <b>physiques</b> (installations, machines, véhicules, stocks…), <b>humaines</b> quantitatives (nombre de salariés, qualification).</p>
<p><b>Actifs intangibles</b> (sources d’innovation et de différenciation) : <b>mercatiques</b> (notoriété, marque, publicité), <b>organisationnelles</b> (qualité, savoir-faire, logistique, système d’information…), <b>technologiques</b> (brevets, R&amp;D), <b>humaines</b> qualitatives (compétences, savoir-être).</p>
<p>Les <b>compétences</b> sont des capacités à mobiliser et combiner au mieux des ressources pour atteindre un objectif (savoir-faire acquis par l’apprentissage et l’expérience). Une compétence est <b>fondamentale</b> si elle remplit trois critères : <b>de la valeur aux yeux des clients</b> ; <b>rare et difficilement imitable</b> ; <b>utilisable dans d’autres activités</b> ou permettant d’accéder à de nombreux marchés. Un <b>diagnostic</b> des ressources révèle forces et faiblesses.</p>
<h3>II. Les types de structure</h3>
<p>La structure distingue les fonctions et les niveaux de management : <b>management stratégique</b> (dirigeants qui décident) et <b>management intermédiaire</b> (mise en œuvre).</p>
<ul>
<li><b>Simple</b> : le dirigeant décide seul (<b>unicité de commandement</b>) ; cohérence, mais difficulté à tout décider seul et salariés peu associés.</li>
<li><b>Fonctionnelle</b> : activités regroupées par fonction ; les salariés reçoivent des ordres de <b>plusieurs responsables spécialistes</b> (pluralité de commandement) ; risque d’ordres contradictoires.</li>
<li><b>Divisionnelle</b> : entreprise découpée en <b>divisions autonomes</b> ; un seul manager par salarié ; risque de redondances et de stratégies incohérentes avec celle du groupe.</li>
<li><b>Matricielle</b> : chaque salarié a un chef de projet ou de division <b>et</b> un responsable de fonction (<b>dualité de commandement</b>) ; flexible et réactive, mais risque de confusion et de conflits.</li>
</ul>
<p><b>Organisation par les processus</b> (<i>reengineering</i>, Hammer et Champy) : un <b>processus</b> est un ensemble d’activités successives mobilisant ressources et compétences pour répondre aux attentes des clients ; il est transversal. Objectif : décloisonner l’entreprise pour améliorer qualité, délais et coûts.</p>
<p><b>Effet d’expérience</b> : le coût de production unitaire diminue quand la production augmente (barrière à l’entrée possible). Quatre causes : <b>économies d’échelle</b>, <b>effets d’apprentissage</b>, <b>effet de taille</b> (pouvoir de négociation), <b>innovation</b>.</p>
<h3>III. Coordination et contrôle (Mintzberg)</h3>
<ul>
<li><b>Ajustement mutuel</b> : échanges informels entre peu de salariés.</li>
<li><b>Supervision directe</b> : un responsable donne les ordres et contrôle.</li>
<li><b>Standardisation des procédés</b> : méthodes de travail décrites précisément.</li>
<li><b>Standardisation des résultats</b> : objectifs à atteindre, méthode libre.</li>
<li><b>Standardisation des qualifications</b> : formation et savoirs communs.</li>
<li><b>Standardisation des normes</b> : culture et valeurs partagées, « ciment » de l’organisation.</li>
</ul>');
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(1401, 14, 1, 'Lequel de ces éléments est un actif intangible ?', 'Les actifs intangibles sont immatériels : marque, notoriété, brevets, savoir-faire… Les machines sont des ressources physiques (actifs tangibles).'),
(1402, 14, 1, 'Que caractérise une structure simple ?', 'Dans la structure simple, le dirigeant prend seul toutes les décisions et entretient des liens directs avec les salariés : c’est l’unicité de commandement.'),
(1403, 14, 1, 'Qu’est-ce qu’une compétence pour l’entreprise ?', 'Une compétence est la capacité à mobiliser et combiner au mieux des ressources en vue d’atteindre un objectif.'),
(1404, 14, 2, 'Quels sont les trois critères d’une compétence fondamentale ?', 'Une compétence est fondamentale si elle a de la valeur pour les clients, est rare et difficilement imitable, et est utilisable dans d’autres activités ou sur de nombreux marchés.'),
(1405, 14, 2, 'Qu’est-ce qui caractérise la structure matricielle ?', 'Chaque salarié est sous l’autorité d’un chef de projet ou de division et d’un responsable de fonction : c’est la dualité de commandement, source de flexibilité mais aussi de confusion.'),
(1406, 14, 2, 'Qu’est-ce qu’un processus ?', 'Un processus est un ensemble d’activités successives mettant en œuvre ressources et compétences pour répondre aux attentes des clients ; il est transversal et fédère plusieurs fonctions.'),
(1407, 14, 3, 'Un salarié reçoit des ordres de plusieurs responsables spécialistes, parfois contradictoires. De quelle structure s’agit-il ?', 'C’est la structure fonctionnelle : la pluralité de commandement donne des ordres de spécialistes, mais peut entraîner des ordres contradictoires et des conflits.'),
(1408, 14, 3, 'Pourquoi les économies d’échelle expliquent-elles l’effet d’expérience ?', 'En étalant ses charges fixes sur un volume de production beaucoup plus important, l’entreprise réduit son coût unitaire.'),
(1409, 14, 3, 'L’entreprise fixe des objectifs à atteindre et laisse les salariés libres de leur méthode. Quel mécanisme de coordination de Mintzberg est utilisé ?', 'La standardisation des résultats assure la cohérence par des objectifs ; les salariés ont une certaine liberté dans leur méthode de travail.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(1401, 'La marque de l’entreprise', 1),
(1401, 'Une machine de production', 0),
(1401, 'Les stocks de marchandises', 0),
(1401, 'Un véhicule de livraison', 0),
(1402, 'Le dirigeant décide seul (unicité de commandement)', 1),
(1402, 'Chaque salarié a deux chefs', 0),
(1402, 'L’entreprise est découpée en divisions autonomes', 0),
(1402, 'Les décisions sont prises par plusieurs responsables spécialisés', 0),
(1403, 'La capacité à mobiliser et combiner des ressources pour atteindre un objectif', 1),
(1403, 'Un bien matériel appartenant à l’entreprise', 0),
(1403, 'Un brevet déposé à l’INPI', 0),
(1403, 'Le nombre de salariés', 0),
(1404, 'Valeur pour les clients, rareté et difficulté d’imitation, utilisation dans d’autres activités', 1),
(1404, 'Faible coût, forte notoriété, ancienneté', 0),
(1404, 'Brevet, marque et logo', 0),
(1404, 'Taille, capital et nombre de salariés', 0),
(1405, 'La dualité de commandement', 1),
(1405, 'L’unicité de commandement', 0),
(1405, 'La pluralité de commandement sans chef de projet', 0),
(1405, 'L’absence totale de hiérarchie', 0),
(1406, 'Un ensemble d’activités successives qui répondent aux attentes des clients', 1),
(1406, 'Une division autonome de l’entreprise', 0),
(1406, 'Un brevet protégé pendant 20 ans', 0),
(1406, 'Un contrat entre deux entreprises', 0),
(1407, 'Une structure fonctionnelle', 1),
(1407, 'Une structure simple', 0),
(1407, 'Une structure divisionnelle', 0),
(1407, 'Une structure par processus', 0),
(1408, 'Les charges fixes sont étalées sur un plus grand volume, ce qui réduit le coût unitaire', 1),
(1408, 'Les charges fixes augmentent avec la production', 0),
(1408, 'Les salariés sont moins bien payés', 0),
(1408, 'L’entreprise vend ses produits plus cher', 0),
(1409, 'La standardisation des résultats', 1),
(1409, 'La supervision directe', 0),
(1409, 'La standardisation des procédés', 0),
(1409, 'L’ajustement mutuel', 0);

-- ---------- Chapitre 15 : Le financement de l’entreprise ----------
INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES (15, 15, 'Thème 3 : L’organisation de l’activité de l’entreprise', 'Le financement de l’entreprise', '<h3>I. Les besoins de financement</h3>
<p><b>Cycle d’investissement</b> : investissements <b>matériels</b> (véhicules, machines, locaux), <b>incorporels</b> (brevet, marque, progiciel de gestion intégré) et <b>financiers</b> (titres, parts du capital d’une autre entreprise). L’investissement est souvent synonyme d’innovation. Le cycle dure entre l’acquisition de l’immobilisation et la fin des recettes qu’elle génère.</p>
<p><b>Cycle d’exploitation</b> : étapes entre les dépenses pour produire et l’encaissement du chiffre d’affaires. En B to B, le paiement intervient au plus tard <b>30 jours</b> après la livraison (règle légale) : c’est le <b>crédit client</b>. Plus il est long, plus le <b>besoin en fonds de roulement (BFR)</b> est important : ce sont les sommes à avancer avant d’être payé. Une entreprise en forte croissance risque de s’épuiser en dépenses jusqu’à la cessation de paiements. La <b>gestion de la trésorerie</b> anticipe et contrôle les décalages entre encaissements et décaissements.</p>
<h3>II. Les solutions de financement</h3>
<h4>A. Le cycle d’investissement</h4>
<ul>
<li><b>Autofinancement</b> : ressources internes suffisantes.</li>
<li><b>Emprunt bancaire</b> : remboursement + intérêts (charges financières). Une politique de relance fait baisser les taux d’intérêt, ce qui facilite le crédit.</li>
<li><b>Apport en capital / émission d’actions</b> : nouveaux associés, dividendes, droits de vote en assemblée générale ; risque de divergences avec les anciens propriétaires.</li>
<li><b>Émission d’obligations</b> : emprunt auprès d’agents à capacité de financement, sans ouvrir le capital ; inconvénient : charge d’intérêts.</li>
<li><b>Financement participatif (crowdfunding)</b> : dons, ouverture du capital… ; fédère une communauté et sert d’outil de communication ; via des plateformes (Ulule, KissKissBankBank…).</li>
<li><b>Subventions</b> de l’État ou des collectivités territoriales.</li>
</ul>
<h4>B. Le cycle d’exploitation</h4>
<ul>
<li><b>Autofinancement</b> affecté au BFR.</li>
<li><b>Affacturage (factoring)</b> : la société <b>factor</b> recouvre les factures contre une commission, paie l’entreprise sans délai et couvre les risques d’impayés.</li>
<li><b>Concours bancaires</b> : crédits à court terme et autorisations de découvert.</li>
<li><b>Crédit fournisseur</b> accordé par les fournisseurs.</li>
</ul>
<h4>C. L’équilibre financier</h4>
<p><b>À court terme</b> : le <b>compte de résultat</b> compare produits et charges : <b>bénéfice</b> si produits &gt; charges, <b>pertes</b> sinon. Une entreprise en pertes ne peut pas autofinancer ses investissements.</p>
<p><b>À long terme</b> : le <b>bilan</b> présente les immobilisations acquises (actif) et les ressources financières qui les financent (passif). Si les capitaux propres deviennent insuffisants (pertes accumulées), l’équilibre n’est plus assuré.</p>');
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(1501, 15, 1, 'En quoi consiste l’autofinancement ?', 'L’autofinancement est une situation idéale : l’entreprise dispose en interne des ressources financières suffisantes pour financer son investissement.'),
(1502, 15, 1, 'Quel est le délai légal maximal de paiement en B to B ?', 'En B to B, le paiement intervient au maximum 30 jours après la livraison du bien ou l’exécution du service (règle légale), sauf délai plus long convenu au contrat.'),
(1503, 15, 1, 'Qu’est-ce qu’une obligation ?', 'Une obligation est un outil financier qui permet à celui qui l’émet d’emprunter de l’argent ; l’investisseur perçoit des intérêts chaque année.'),
(1504, 15, 2, 'Qu’est-ce que le besoin en fonds de roulement (BFR) ?', 'Le BFR correspond aux sommes que l’entreprise doit avancer en attendant d’être elle-même payée par ses clients.'),
(1505, 15, 2, 'En quoi consiste l’affacturage ?', 'L’entreprise confie le recouvrement de ses factures à un factor, qui la paie sans délai contre une commission et couvre les risques d’impayés.'),
(1506, 15, 2, 'Quel est l’avantage pour l’entreprise d’émettre des obligations plutôt que des actions ?', 'Les obligations apportent des ressources financières sans ouvrir le capital à de nouveaux associés ; l’inconvénient est la charge d’intérêts.'),
(1507, 15, 3, 'Une entreprise achète un brevet pour obtenir un monopole d’exploitation. De quel type d’investissement s’agit-il ?', 'Le dépôt ou l’achat d’un brevet est un investissement incorporel (immatériel) : il augmente les ressources intangibles de l’entreprise.'),
(1508, 15, 3, 'Pourquoi une entreprise en forte croissance court-elle paradoxalement un risque ?', 'Elle peut engager de trop grosses dépenses pour honorer ses commandes avant d’être payée : le BFR devient trop élevé et elle risque de ne plus pouvoir payer ses charges courantes.'),
(1509, 15, 3, 'Le total des produits d’une entreprise est inférieur au total de ses charges. Quelle conséquence ?', 'Le compte de résultat fait apparaître des pertes : l’équilibre financier n’est pas assuré et l’entreprise ne pourra pas autofinancer ses investissements.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(1501, 'Financer l’investissement avec des ressources internes', 1),
(1501, 'Emprunter auprès d’une banque', 0),
(1501, 'Émettre des obligations', 0),
(1501, 'Recevoir une subvention de l’État', 0),
(1502, '30 jours après la livraison ou la prestation', 1),
(1502, '24 heures', 0),
(1502, '90 jours', 0),
(1502, '1 an', 0),
(1503, 'Un outil financier qui permet à l’émetteur d’emprunter de l’argent', 1),
(1503, 'Un titre de propriété d’une partie du capital', 0),
(1503, 'Une subvention publique', 0),
(1503, 'Un contrat de sous-traitance', 0),
(1504, 'Les sommes avancées par l’entreprise avant d’être payée par ses clients', 1),
(1504, 'Le montant total de ses dettes bancaires', 0),
(1504, 'Le bénéfice de l’exercice', 0),
(1504, 'La valeur de ses immobilisations', 0),
(1505, 'Confier le recouvrement de ses factures à un factor contre commission', 1),
(1505, 'Emprunter auprès d’un fournisseur', 0),
(1505, 'Émettre des actions', 0),
(1505, 'Réduire le délai de paiement légal', 0),
(1506, 'Elle ne partage pas son capital avec de nouveaux associés', 1),
(1506, 'Elle n’a aucune charge financière à payer', 0),
(1506, 'Elle obtient des droits de vote supplémentaires', 0),
(1506, 'Elle reçoit une subvention automatique', 0),
(1507, 'Un investissement incorporel', 1),
(1507, 'Un investissement matériel', 0),
(1507, 'Un investissement financier', 0),
(1507, 'Un coût d’exploitation courant', 0),
(1508, 'Un BFR trop élevé peut la mener à la cessation de paiements', 1),
(1508, 'La croissance supprime tous ses coûts fixes', 0),
(1508, 'Elle perd automatiquement ses clients', 0),
(1508, 'Ses fournisseurs deviennent des concurrents', 0),
(1509, 'Elle réalise des pertes et ne peut pas autofinancer ses investissements', 1),
(1509, 'Elle réalise un bénéfice', 0),
(1509, 'Elle est automatiquement subventionnée', 0),
(1509, 'Son bilan est nécessairement équilibré', 0);
