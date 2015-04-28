# GSB Report - Projet Symfony 2.6

## Description :
>Le laboratoire désire mettre à disposition des visiteurs médicaux une application Web permettant de centraliser les comptes-rendus de visite. Cette base d'information sera utilisée à des fins d'élaboration de la démarche de communication auprès des praticiens et donnera une vision individuelle et synthétique de l'activité de représentation.
Pour permettre une aide au renseignement des rapports, l'application fournira une description des produits du laboratoire, les coordonnées précises des praticiens et des informations détaillées les concernant. 


### Utilisation
Pour se connecter utilisez un identifiant d'un utilisateur dans la base de donnée.
Les utilisateurs ont tous le même mot de passe : user1

Vous pouvez créer un utilisateur en exécutant la commande de création d'un utilisateur de FosUserBundle  :

 `php app/console fos:user:create username email password`


### Vendors
- FosUserBundle pour la gestion des utilisateurs
- GenemuFormBundle pour le datepicker et les selects avec recherche
- Bootstrap pour la mise en page CSS, JS et fonts
- DataTables pour les tableaux dynamiques en JS

### Licence
*Pas de licence*

***
*Un projet Symfony 2.6 créé le 20 mars 2015 à 08h33 pour un projet réalisé en deuxième année de BTS SIO en SLAM 4.*
