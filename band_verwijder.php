<?php
require 'session.php';
require 'config.php';

$bandid = $_GET[ 'id'];
$query = "SELECT * FROM back12_bands WHERE ID_band = '$bandid'";
$resultaat = mysqli_query($mysqli, $query);
if (mysqli_num_rows($resultaat) == 0)

{
    echo "<p>Er is geen band met ID $bandid.</p>";
} else

{

    $rij = mysqli_fetch_array($resultaat);

    ?>
    <p>Weet je zeker dat je de onderstaande band wilt verwijderen?</p>
    <form name="form1" method="POST" action="band_verwijder_verwerk.php">
        <input type="hidden" name="ID" value="<?php echo $rij['ID_band'] ?>" >
        <p>Bandnaam:
            <input type="text" name="Naam" value="<?php echo $rij['Naam'] ?>" disabled></p>
        <p>Land van herkomst:
            <input type="text" name="Land" value="<?php echo $rij['Land'] ?>" disabled></p>
        <p><input type="submit" name="submit" value="Verwijder" /></p>
    </form>
    <p><a href="band_uitlees.php">TERUG</a> naar overzicht.</p>

    <?php

}

?>