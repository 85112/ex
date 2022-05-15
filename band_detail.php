<?php
require 'config.php';


$ID_band = $_GET['id'];

$query = "SELECT * FROM `back12_bands` WHERE ID_band = " . $ID_band;

$resultaat = mysqli_query($mysqli, $query);

if (mysqli_num_rows($resultaat) == 0)
{
    echo "<p>Er is geen band gevonden met ID $ID_band.</p>";
}

else
{
    $rij = mysqli_fetch_array($resultaat);

    echo "<h2>Gegevens van band met id " . $ID_band . ":</h2>";
    echo "<table border='1' width='650px'>";
    echo "<tr><td>Naam:</td>";
    echo "<td>" . $rij['Naam'] . "<td/></tr>";
    echo "<tr><td>Land van herkomst:</td>";
    echo "<td>" . $rij['Land'] . "<td/></tr>";
    echo "<tr><td>Aantal leden:</td>";
    echo "<td>" . $rij['AantalLeden'] . "<td/></tr>";
    echo "<tr><td>Soort Muziek:</td>";
    echo "<td>" . $rij['Muzieksoort'] . "<td/></tr>";
    echo "<tr><td>extra info:</td>";
    echo "<td>" . $rij['Info'] . "<td/></tr>";
    echo "</table>";
}

echo "<p>Terug naar het <a href='band_uitlees.php'>overzicht</a></p>"

?>