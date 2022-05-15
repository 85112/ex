<?php
require 'config.php';
 
$naam = $_POST['Naam'];
$land = $_POST['Land'];
$leden = $_POST['AantalLeden'];
$muziek = $_POST['Muzieksoort'];
$info = $_POST['Info'];
 
$query = "INSERT INTO back12_bands
VALUES (NULL, '$naam', '$land', '$leden', '$muziek', '$info')";
 
if(mysqli_query($mysqli, $query))
{
 echo "<p>User $naam is toegevoegd.</p>";
}
else{
 echo "<p>FOUT bij toevoegen.</p>";
 echo mysqli_error($mysqli);
}
 
echo "<p><a href='band_uitlees.php'>Terug</a></p>";
?>