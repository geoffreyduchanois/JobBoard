<?php
  $servername = "localhost";
  $username ="raphael";
  $password = "Bestracle1!";
  $databasename="Entreprise";

  // Create connection
  $conn = new mysqli($servername, $username, $password , $databasename);

  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
  echo "Connected successfully";

  function createInUser($identifiant, $pseudo, $psw, $mail, $tel, $cv) {
    $conn = new mysqli($servername, $username, $password , $databasename);
    $sql="INSERT INTO Identification  (Identifiant, Pseudo, Mdp, Mail, Telephone, CV) VALUES('$identifiant', '$pseudo','$psw','$mail', '$tel', '$cv')";


  }

  ?>
