<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Inscription</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="" />
  <meta name="keywords" content="" />
  <link rel="stylesheet" type="text/css" href="../css/animate.css">
  <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="../css/line-awesome.css">
  <link rel="stylesheet" type="text/css" href="../css/line-awesome-font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="../lib/slick/slick.css">
  <link rel="stylesheet" type="text/css" href="../lib/slick/slick-theme.css">
  <link rel="stylesheet" type="text/css" href="../css/style.css">
  <link rel="stylesheet" type="text/css" href="../css/responsive.css">
</head>


<body class="sign-in">


  <div class="wrapper">


    <div class="sign-in-page">
      <div class="signin-popup">
        <div class="signin-pop">
          <div class="row">
            <div class="col-lg-6">
              <div class="cmp-info">
                <div class="cm-logo">
                  <a href="../index.php">
                    <img src="..\images/cm-logo.png" alt="">
                  </a>
                  <p>Enseignement catholique sous contrat d'association avec l'Etat
                    Etablissement habilité à percevoir la taxe d'apprentissage</p>
                  </div><!--extrémité du logo cm-->
                  <a href="../index.php">
                    <img src="../images/cm-main-img.png" alt="">
                  </a>
                </div><!--fin cmp-info-->
              </div>
              <div class="col-lg-6">
                <div class="login-sec">
                  <ul class="sign-control">
                    <li data-tab="tab-1"><a href="connexion.php" title="">Se connecter</a></li>
                    <li data-tab="tab-2" class="current"><a href="#" title="">S'inscrire</a></li>
                  </ul>

                  <div class="sign_in_sec current" id="tab-2">
                    <h3>S'inscrire</h3>
                    <div class="dff-tab current" id="tab-3">
                      <form action="cible_inscription.php" method="post">
                        <div class="row">
                          <div class="col-lg-12 no-pdd">
                            <div class="sn-field">
                              <input type="text" name="nom" required placeholder="Nom">
                              <i class="la la-user"></i>
                            </div>
                          </div>
                          <div class="col-lg-12 no-pdd">
                            <div class="sn-field">
                              <input type="text" name="prenom" required placeholder="Prénom">
                              <i class="la la-user"></i>
                            </div>
                          </div>
                          <div class="col-lg-12 no-pdd">
                            <div class="sn-field">
                              <input type="mail" name="email" required placeholder="Adresse éléctronique">
                              <i class="la la-globe"></i>
                            </div>
                          </div>

                          <div class="col-lg-12 no-pdd">
                            <div class="sn-field">
                              <input type="password" name="mdp" required placeholder="Mot de passe">
                              <i class="la la-lock"></i>
                            </div>
                          </div>
                          <div class="col-lg-12 no-pdd">
                            <div class="sn-field">
                              <input type="password" name="confirmmdp" required placeholder="Retapez le mot de passe">
                              <i class="la la-lock"></i>
                            </div>
                          </div>

                          <div class="col-lg-12 no-pdd">
                            <button type="submit" value="submit">Commencer</button>
                          </div>
                          <?php
                          if (isset($_SESSION['erreur_inscr']))
                          {
                            echo "<div style='color:#ff0000'>
                            ".$_SESSION['erreur_inscr'];
                            unset($_SESSION['erreur_inscr']);
                          }
                          ?>
                        </div>
                      </form>
                    </div><!--dff-tab end-->

                  </div>
                </div><!--login-sec end-->
              </div>
            </div>
          </div><!--signin-pop end-->


        </div><!--theme-layout end-->
      </div>
    </div>

    <div class="footy-sec">
      <div class="container">


        <p><img src="../images/copy-icon.png" alt="">Copyright 2020.</p>
      </div>
    </div><!--footy-sec end-->

    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/popper.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../lib/slick/slick.min.js"></script>
    <!-- <script type="text/javascript" src="../js/script.js"></script> -->
  </body>
  </html>
