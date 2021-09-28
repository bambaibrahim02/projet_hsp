<?php
$reservation = new reservation($_POST["nom"], $_POST["prenom"], $_POST["mail"], $_POST["mdp"], $_POST["etat_compte"], $_POST["derniere_connexion"]);
$co = new Manager();
$co->reservation($reservation);
?>
