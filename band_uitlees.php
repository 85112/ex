<?php
require 'config.php';

$query = "SELECT * FROM back12_bands";

$resultaat = mysqli_query($mysqli, $query);

if (mysqli_num_rows($resultaat) == 0)
{
    echo "<p>er zijn geen bands gevonden<p/>";
}
else {
    echo "<table border='1'>";


    while ($rij = mysqli_fetch_array($resultaat)) {
        echo "<tr>";
        echo "<td>" . $rij['Naam'] . "</td>";
        echo "<td>" .  $rij['Muzieksoort'] . "</td>";
        echo "<td> <a href='band_detail.php?id=".$rij['ID_band']."'>Details</a> </td>";
        echo "<td> <a href='band_wijzig.php?id=".$rij['ID_band']."'>Wijzig</a> </td>";
        echo "<td> <a href='band_verwijder.php?id=".$rij['ID_band']."'>Verwijder</a> </td>";
        echo "</tr>";

    }
    echo "</table>";
}
echo "<p><a href='band_toevoeg.php'>Voeg een band toe</a></p>";
echo "<p><a href='uitlog.php'>UITLOGGEN</a></p>";


?>