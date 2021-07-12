<?php
  $servername = "localhost";
$username ="root";
$password = "";
$databasename="Entreprise";


// Create connection
$conn = new mysqli($servername, $username, $password , $databasename);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";



$entreprise = array();
$identification = array();
$correspondance = array();
$emploi = array();
$information = array();

$sql = 'SELECT * FROM entreprise;';
echo "$sql";

?>

