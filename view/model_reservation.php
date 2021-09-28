<?php
class reservation { //Déclaration de la classe reservation
//Déclaration des attributs
  private $_nom;
  private $_prenom;
  private $_mail;
  private $_mdp;
  private $_etat_compte;
  private $_derniere_connexion;

  public function __construct($nom, $prenom, $mail, $mdp, $etat_compte, $derniere_connexion){
//Partie Set
      $this->setnom($nom);
      $this->setprenom($prenom);
      $this->setmail($mail);
	  $this->setmail($mdp);
      $this->setetat_compte($etat_compte);
      $this->setderniere_connexion($derniere_connexion);

}

public function setnom($nom){
  if(empty($nom)){
    trigger_error('la variable doit etre un caractere'); 
    return;
  }
  $this->_nom = $nom;
}
public function setprenom($prenom){
  if(empty($prenom)){
    trigger_error('la variable doit etre un caractere');
    return;
  }
  $this->_prenom = $prenom;
}
public function setmail($mail){
  if(empty($mail)){
    trigger_error('la variable doit etre un caractere');
    return;
  }
  $this->_mail = $mail;
}

public function setmdp($mdp){
  if(empty($mdp)){
    trigger_error('la variable doit etre un caractere');
    return;
  }
  $this->_mdp = $mdp;
}

public function setetat_compte($etat_compte){
  if(empty($etat_compte)){
    trigger_error('la variable doit etre un caractere');
    return;
  }
  $this->_etat_compte = $etat_compte;
}
public function setderniere_connexion($derniere_connexion){
  if(empty($derniere_connexion)){
    trigger_error('la variable doit etre un caractere');
    return;
  }
  $this->_derniere_connexion = $derniere_connexion;
}
//Partie Get
public function getnom(){
  return $this->_nom;
}
public function getprenom(){
  return $this->_prenom;
}
public function getmail(){
  return $this->_mail;
}
public function getmdp(){
  return $this->_mdp;
}
public function getetat_compte(){
  return $this->_etat_compte;
}
public function getderniere_connexion(){
  return $this->_derniere_connexion;
}

}
?>
