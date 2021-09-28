<?php
require 'model_reservation.php';
require 'traitement_reservation.php';
class Manager{ //Déclaration de la classe Manager
public function reservation($donnee){

    $bdd=new PDO('mysql:host=localhost;dbname=projet_hsp;charset=utf8', 'root', ''); //Connexion à la BDD
    $req=$bdd->prepare('INSERT INTO utilisateurs (nom, prenom, mail, mdp, etat_compte, derniere_connexion) VALUES(:nom, :prenom, :mail, :mdp, :etat_compte, :derniere_connexion)'); //Préparation de la table reservation avec les valeurs de la table
    $req->execute(array('nom'=>$donnee->getnom(), 'prenom'=>$donnee->getprenom(), 'mail'=>$donnee->getmail(), 'mdp'=>$donnee->getmdp(), 'etat_compte'=>$donnee->getetat_compte(), 'derniere_connexion'=>$donnee->getderniere_connexion())); //Execution des requêtes
    //Conditions de redirection
	if ($req == true){
     ("location: index.php");
    }
    else{
      header("location: index.php");
    }

          }
}                         

?>
