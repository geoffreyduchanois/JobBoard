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
  // echo "Connected successfully";

$entreprise = array();
$Identification = array();
$Correspondance = array();
$Emploi = array();
$Offre = array();


//table entreprise
$sql = 'SELECT * FROM entreprise';
// echo $sql;
$result = $conn->query($sql);


if ($result->num_rows > 0) {
  //output data of each row
  while ($row = $result->fetch_assoc()){
    $entreprise[] = $row;
  }
}

//table Identification
$sql1 = 'SELECT * FROM Identification';
// echo $sql1;
$result1 = $conn->query($sql1);

if ($result1->num_rows > 0) {
  //output data of each row
  while ($row = $result1->fetch_assoc()){
    $Identification[] = $row;
  }
}

//table Correspondance
$sql2 = 'SELECT * FROM Correspondance';
// echo $sql2;
$result2 = $conn->query($sql2);

if ($result2->num_rows > 0) {
  //output data of each row
  while ($row = $result2->fetch_assoc()){
    $Correspondance[] = $row;
  }
}

//table Emploi
$sql3 = 'SELECT * FROM Emploi';
// echo $sql3;
$result3 = $conn->query($sql3);

if ($result3->num_rows > 0) {
  //output data of each row
  while ($row = $result3->fetch_assoc()){
    $Emploi[] = $row;
  }
}

//table Offre
$sql4 = 'SELECT * FROM Offre';
// echo $sql4;
$result4 = $conn->query($sql4);

if ($result4->num_rows > 0) {
  //output data of each row
  while ($row = $result4->fetch_assoc()){
    $Offre[] = $row;
  }
}

$gigaArray = array('Entreprise' => $entreprise, 'Identification' => $Identification, 'Correspondance' => $Correspondance, 'Emploi' => $Emploi, 'Offre' => $Offre);
echo json_encode($gigaArray);

$conn->close();
?>
