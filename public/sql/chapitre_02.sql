-- ============================================================
--  CHAPITRE 2 : Le fonctionnement des marchés
--  À importer dans phpMyAdmin APRÈS quiz_cours.sql (ne supprime rien).
-- ============================================================
USE quiz_cours;

INSERT INTO chapitres (id, numero, theme, titre, contenu) VALUES
(2, 2, 'Thème 1 : L’intégration de l’entreprise dans son environnement', 'Le fonctionnement des marchés',
'<p>Le marché tient une place centrale dans l’organisation des échanges. L’<b>économie de marché</b> est un système dans lequel la valeur des biens et services se détermine au travers des échanges entre agents économiques.</p>

<h3>I. Le fonctionnement des marchés sur lesquels intervient l’entreprise</h3>
<p>Le <b>marché</b> est le lieu, physique ou virtuel, de rencontre d’une <b>offre</b> et d’une <b>demande</b> de biens ou de services. Chacun y attribue une valeur aux biens en fonction de leur <b>utilité</b> et de leur <b>rareté</b>.</p>

<h4>A. La détermination et le rôle du prix</h4>
<p><b>1. Les différents marchés</b></p>
<ul><li><b>Marché des biens et services</b> : échanges entre offreurs et demandeurs (marché de l’automobile, de l’assurance…).</li><li><b>Marché du travail</b> : ceux qui offrent leur force de travail rencontrent ceux qui en ont besoin (les entreprises).</li><li><b>Marché financier</b> : les agents à besoin de financement obtiennent des capitaux auprès des agents à capacité de financement.</li></ul>
<p><b>2. La détermination du prix</b></p>
<p>Le marché permet à l’offre et à la demande de se rencontrer pour fixer un <b>prix d’équilibre</b> : celui qui permet à toute l’offre proposée de rencontrer une demande. Il se fixe par <b>tâtonnement successif</b>.</p>
<ul><li>Prix trop élevé → la demande <b>diminue</b> (les consommateurs sont limités par leur budget) : la demande est une <b>fonction décroissante</b> du prix. <i>Exception : la consommation ostentatoire.</i></li><li>Prix élevé → l’offre <b>augmente</b> (perspectives de profits plus élevés) : l’offre est une <b>fonction croissante</b> du prix.</li><li>Quand le prix est trop bas, la situation s’inverse.</li></ul>
<p><b>3. Le rôle du prix</b></p>
<p>Le prix joue un rôle de <b>signal</b> : il indique la valeur du bien, varie selon la rareté et l’intensité de la demande, et oriente les choix des agents.</p>

<h4>B. Concurrence et coopération entre les acteurs</h4>
<p><b>1. Les conditions de la concurrence</b> (règles théoriques d’un marché optimal) :</p>
<ul><li><b>information parfaite</b> véhiculée par le prix ;</li><li><b>absence de barrières</b> à l’entrée ou à la sortie du marché ;</li><li><b>atomicité</b> : offreurs et demandeurs si nombreux qu’aucun n’a de position dominante.</li></ul>
<p><b>2. La coopération sur le marché</b></p>
<p>Dans la réalité, ces conditions sont rarement respectées : les entreprises cherchent à influencer le marché en se <b>différenciant</b> ou en <b>coopérant</b> avec leurs concurrents. Certaines coopérations sont autorisées ; elles sont <b>interdites</b> quand elles visent à manipuler l’information pour fausser les choix (ex. : deux entreprises s’allient pour bloquer artificiellement les prix).</p>

<h3>II. Les dysfonctionnements du marché</h3>
<p>Le marché ne fonctionne pas toujours de façon optimale : le prix n’assure alors plus sa fonction.</p>
<p><b>1. Les barrières à l’entrée</b> : obstacles rendant l’implantation d’une entreprise difficile ou impossible.</p>
<ul><li><b>Naturelles</b> : indépendantes de la volonté des producteurs (caractéristiques du marché, nature de l’activité, réglementation de l’État).</li><li><b>Artificielles</b> : stratégies des entreprises pour freiner l’accès des concurrents (ex. : baisse artificielle du prix pour gagner des parts de marché).</li></ul>
<p><b>2. Les asymétries d’information</b> : tous les participants ne disposent pas de la même information. Ceux qui en savent plus sont avantagés et peuvent influencer la fixation du prix.</p>

<h3>III. Les externalités</h3>
<p>Les <b>externalités</b> sont des conséquences non voulues par les acteurs et non prises en compte par le marché : une décision affecte le bien-être d’autres agents sans être intégrée au prix ni donner lieu à une contrepartie financière.</p>
<ul><li><b>Positives</b> : améliorent le bien-être des autres (un apiculteur améliore les rendements agricoles alentour).</li><li><b>Négatives</b> : dégradent le bien-être des autres (la pollution d’une usine).</li></ul>
<p>Le prix ne garantit donc pas une efficacité optimale : l’<b>État</b> doit intervenir.</p>');

-- ---------- Questions ★ (niveau 1) ----------
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(101, 2, 1, 'Qu’est-ce qu’un marché ?', 'Le marché est le lieu, physique ou virtuel, où se rencontrent une offre et une demande de biens ou de services.'),
(102, 2, 1, 'Comment appelle-t-on le prix qui permet à toute l’offre proposée de rencontrer une demande ?', 'C’est le prix d’équilibre, fixé par tâtonnement successif sur le marché.'),
(103, 2, 1, 'Dans la plupart des cas, que fait la demande lorsque le prix devient trop élevé ?', 'Les consommateurs cherchent à maximiser leur satisfaction avec un budget limité : si le prix monte trop, certains renoncent et la demande diminue. La demande est une fonction décroissante du prix.'),
(104, 2, 1, 'Comment réagit l’offre quand le prix augmente ?', 'Attirées par des perspectives de profits plus élevés, les entreprises produisent davantage : l’offre est une fonction croissante du prix.'),
(105, 2, 1, 'Quel rôle joue le prix sur un marché ?', 'Le prix est un signal : il renseigne sur la valeur d’un bien, varie selon la rareté et l’intensité de la demande, et oriente les choix des agents.'),
(106, 2, 1, 'Sur quel marché les agents à besoin de financement obtiennent-ils des capitaux ?', 'Le marché financier met en relation les agents à besoin de financement et les agents à capacité de financement.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(101, 'Le lieu, physique ou virtuel, de rencontre d’une offre et d’une demande', 1), (101, 'Uniquement un lieu physique où l’on vend des produits', 0), (101, 'L’ensemble des entreprises d’un même secteur', 0), (101, 'Un organisme public qui fixe les prix', 0),
(102, 'Le prix d’équilibre', 1), (102, 'Le prix plafond', 0), (102, 'Le prix de revient', 0), (102, 'Le prix de monopole', 0),
(103, 'Elle diminue', 1), (103, 'Elle augmente', 0), (103, 'Elle reste toujours identique', 0), (103, 'Elle disparaît définitivement', 0),
(104, 'Elle a tendance à augmenter', 1), (104, 'Elle diminue', 0), (104, 'Elle ne varie pas', 0), (104, 'Elle devient nulle', 0),
(105, 'Un signal qui oriente les choix des agents', 1), (105, 'Une sanction envers les consommateurs', 0), (105, 'Une obligation légale d’achat', 0), (105, 'Un impôt sur les échanges', 0),
(106, 'Le marché financier', 1), (106, 'Le marché du travail', 0), (106, 'Le marché des biens et services', 0), (106, 'Le marché de l’automobile', 0);

-- ---------- Questions ★★ (niveau 2) ----------
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(107, 2, 2, 'Laquelle de ces propositions n’est PAS une condition théorique d’un marché concurrentiel optimal ?', 'Un marché optimal suppose une information parfaite, l’absence de barrières à l’entrée et à la sortie, et l’atomicité. Une position dominante est précisément ce que l’atomicité exclut.'),
(108, 2, 2, 'Que signifie l’atomicité du marché ?', 'L’atomicité signifie qu’offreurs et demandeurs sont si nombreux qu’aucun d’eux n’a de position dominante ni n’influence le fonctionnement du marché.'),
(109, 2, 2, 'Qu’est-ce qui caractérise une barrière à l’entrée naturelle ?', 'Les barrières naturelles sont indépendantes de la volonté des producteurs : elles tiennent aux caractéristiques du marché, à la nature de l’activité ou à la réglementation de l’État.'),
(110, 2, 2, 'Quel exemple correspond à une barrière à l’entrée artificielle ?', 'Une barrière artificielle résulte d’une stratégie des entreprises : par exemple une baisse artificielle des prix pour gagner des parts de marché et décourager les concurrents.'),
(111, 2, 2, 'Qu’est-ce qu’une asymétrie d’information ?', 'Il y a asymétrie d’information quand tous les participants ne détiennent pas la même information : certains sont avantagés et peuvent influencer la fixation du prix.'),
(112, 2, 2, 'Quel exemple illustre une externalité positive ?', 'L’installation d’un apiculteur améliore les rendements agricoles des terres voisines sans que cet effet soit payé : c’est une externalité positive.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(107, 'L’existence d’un acteur en position dominante', 1), (107, 'L’information parfaite véhiculée par le prix', 0), (107, 'L’absence de barrières à l’entrée ou à la sortie', 0), (107, 'Un très grand nombre d’offreurs et de demandeurs', 0),
(108, 'Le nombre d’offreurs et de demandeurs est si important qu’aucun n’a de position dominante', 1), (108, 'Un seul offreur domine le marché', 0), (108, 'Tous les produits vendus sont identiques et gratuits', 0), (108, 'Les prix sont fixés par l’État', 0),
(109, 'Elle est indépendante de la volonté des producteurs', 1), (109, 'Elle est créée volontairement par une entreprise pour bloquer un concurrent', 0), (109, 'Elle n’existe que sur le marché financier', 0), (109, 'Elle disparaît dès que le prix baisse', 0),
(110, 'Une baisse artificielle des prix pour gagner des parts de marché', 1), (110, 'Une réglementation imposée par l’État', 0), (110, 'Le coût élevé lié à la nature de l’activité', 0), (110, 'Le très grand nombre de concurrents', 0),
(111, 'Une situation où tous les participants ne disposent pas de la même information', 1), (111, 'Une situation où l’information est parfaite pour tous', 0), (111, 'Une différence de prix entre deux marchés', 0), (111, 'Une différence de taille entre deux entreprises', 0),
(112, 'Un apiculteur qui améliore les rendements agricoles alentour', 1), (112, 'La pollution générée par une usine', 0), (112, 'Une entente entre deux entreprises sur les prix', 0), (112, 'Une baisse artificielle des prix', 0);

-- ---------- Questions ★★★ (niveau 3) ----------
INSERT INTO questions (id, chapitre_id, niveau, enonce, explication) VALUES
(113, 2, 3, 'Deux entreprises s’allient pour bloquer artificiellement les prix d’un produit. Que peut-on dire de cette coopération ?', 'Certaines coopérations sont autorisées, mais celle-ci est interdite : son objectif est de manipuler l’information et de fausser les choix des agents économiques.'),
(114, 2, 3, 'Un vendeur de voitures d’occasion connaît les défauts d’un véhicule, que l’acheteur ignore. De quelle situation s’agit-il ?', 'Le vendeur détient plus d’information que l’acheteur : c’est une asymétrie d’information. Il est avantagé et peut influencer la fixation du prix.'),
(115, 2, 3, 'Une usine pollue une rivière et des pêcheurs voient leurs prises diminuer, sans aucune compensation. Que peut-on en conclure ?', 'La pollution est une externalité négative : elle dégrade le bien-être d’autres agents sans être intégrée au prix ni compensée financièrement.'),
(116, 2, 3, 'Pourquoi les entreprises cherchent-elles souvent à influencer le marché à leur avantage ?', 'Les conditions théoriques de la concurrence sont rarement respectées dans la réalité : les entreprises cherchent à influencer le marché en se différenciant de leurs concurrents ou en coopérant avec eux.'),
(117, 2, 3, 'Dans quel cas la demande ne diminue-t-elle pas quand le prix augmente ?', 'La consommation ostentatoire est une exception : le bien est acheté pour son prix élevé et le prestige qu’il procure, la demande ne suit donc pas le mécanisme habituel.'),
(118, 2, 3, 'Pourquoi l’intervention de l’État est-elle parfois nécessaire face aux externalités ?', 'Les externalités ne sont pas prises en compte par le marché : le prix ne garantit alors plus une efficacité optimale, d’où la nécessité d’une intervention de l’État.');
INSERT INTO reponses (question_id, texte, est_correcte) VALUES
(113, 'Elle est interdite car elle fausse les choix des agents économiques', 1), (113, 'Elle est toujours autorisée car les entreprises sont libres', 0), (113, 'Elle est autorisée si les deux entreprises sont de petite taille', 0), (113, 'Elle est obligatoire pour garantir un prix d’équilibre', 0),
(114, 'Une asymétrie d’information', 1), (114, 'Une externalité positive', 0), (114, 'Une barrière à l’entrée naturelle', 0), (114, 'Une situation d’atomicité', 0),
(115, 'C’est une externalité négative non intégrée dans le prix', 1), (115, 'C’est une externalité positive', 0), (115, 'C’est une barrière à l’entrée artificielle', 0), (115, 'C’est un effet voulu et compensé par le marché', 0),
(116, 'Parce que les conditions théoriques de la concurrence sont rarement respectées', 1), (116, 'Parce que la loi les oblige à fixer les prix', 0), (116, 'Parce que le marché est toujours parfait', 0), (116, 'Parce que les consommateurs refusent d’acheter', 0),
(117, 'Dans le cas d’une consommation ostentatoire', 1), (117, 'Quand le budget des consommateurs augmente à chaque achat', 0), (117, 'Quand l’offre diminue', 0), (117, 'Jamais : la demande diminue toujours quand le prix monte', 0),
(118, 'Parce que le prix ne garantit pas une efficacité optimale en présence d’externalités', 1), (118, 'Parce que les externalités augmentent toujours les profits', 0), (118, 'Parce que l’État veut fixer lui-même tous les prix', 0), (118, 'Parce que les externalités n’existent que sur le marché du travail', 0);
