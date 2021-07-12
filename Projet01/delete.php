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



function deleteInUser($id) {
    $sql="DELETE FROM Identification WHERE id_identification='$id'";

}
$conn->close();
?>
