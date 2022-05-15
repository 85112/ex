<?php

if (isset($_POST['submit']))
{
    require 'config.php';

    $ID = $_POST['ID'];
    $Naam = $_POST['Naam'];
    $Land = $_POST['Land'];
    $Leden = $_POST['AantalLeden'];
    $Muziek = $_POST['Muzieksoort'];
    $Info = $_POST['Info'];

    $query = "UPDATE back12_bands
    SET Naam ='$Naam', Land ='$Land', AantalLeden = '$Leden',
             Muzieksoort ='$Muziek', Info ='$Info'
        WHERE ID = '$ID'";


    if(mysqli_query($mysqli, $query))
    {
        header('Location: band_uitlees.php');
        echo "<p>Band $Naam is aangepast.</p>";
    }
    else
    {
        echo "<p>FOUT bij aanpassen Band met ID $ID.</p>";
        echo mysqli_error($mysqli);
    }
}
else
{
    echo "<p>Geen gegevens ontvangen...</p>";

}

echo "<p><a href='band_uitlees.php'>TERUG</a> naar overzicht</p>";




?>
