<?php

if (isset($_POST['submit']))
{
    require 'config.php';

    $ID = $_POST['ID'];
    $Naam = $_POST['Naam'];
    $Land = $_POST['Land'];

    $query = "DELETE FROM back12_bands WHERE ID_band = $ID";


    echo $query . "<br/>";

    if(mysqli_query($mysqli, $query))
    {
        echo "<p>Band $Naam is verwijderd!</p>";
    }
    else
    {
        echo "<p>FOUT bij verwijderen van $Naam.</p>";
        echo mysqli_error($mysqli);
    }
}
else
{
    echo "<p>Geen gegevens ontvangen...</p>";

}

echo "<p><a href='band_uitlees.php'>TERUG</a> naar overzicht</p>";




?>