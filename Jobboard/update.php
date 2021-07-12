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



function updateInUser($id_identification,$identifiant, $pseudo, $psw, $mail, $tel, $cv) {
    $sql="UPDATE Identification SET
    Identifiant ='$identifiant',
     Pseudo = '$pseudo',
     Mdp = '$psw',
     Mail='$mail',
     Telephone '$tel',
     CV = '$cv'
     WHERE id_identification='$id'";

}
$conn->close();
?>
