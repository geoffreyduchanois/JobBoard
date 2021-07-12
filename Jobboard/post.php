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

$identifiant = $_POST['identifiant'];
$pseudo = $_POST['pseudo'];
$psw = $_POST['psw'];
$mail = $_POST['mail'];
$tel = $_POST['tel'];



    $sql="INSERT INTO Identification  (Identifiant, Pseudo, Mdp, Mail, Telephone) VALUES('$identifiant','$pseudo','$psw','$mail','$tel')";
    $result = $conn->query($sql);



$conn->close();
?>
