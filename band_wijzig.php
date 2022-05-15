<?php
require 'session.php';
require 'config.php';


$bandid = $_GET[ 'id'];
$query = "SELECT * FROM back12_bands WHERE ID_band = '$bandid'";
$resultaat = mysqli_query($mysqli, $query);
if (mysqli_num_rows($resultaat) == 0)

{
    echo "<p>Er is geen band met ID $bandid.</p>";
} else {



    $rij = mysqli_fetch_array($resultaat);

    ?>
    <form name="form1" method="POST" action="band_wijzig_verwerk.php">
        <table width="200" border="0">
            <tr>
                <td>ID:</td>
                <td><input type="number" name="ID" value="<?php echo $rij['ID_band'] ?>" readonly></td>
            </tr>

            <tr>
                <td>Naam:</td>
                <td><input type="text" name="Naam" value="<?php echo $rij['Naam'] ?>"></td>
            </tr>

            <tr>
                <td>Land:</td>
                <td><input type="text" name="Land" value="<?php echo $rij['Land'] ?>"></td>
            </tr>

            <tr>
                <td>Leden:</td>
                <td><input type="number" name="AantalLeden" value="<?php echo $rij['AantalLeden'] ?>"></td>
            </tr>

            <tr>
                <td>Muzieksoort:</td>
                <td><input type="text" name="Muzieksoort" value="<?php echo $rij['Muzieksoort'] ?>"></td>
            </tr>

            <tr>
                <td>Info:</td>
                <td><input type="text" name="Info" value="<?php echo $rij['Info'] ?>"></td>
            </tr>

            <tr>

                <td><input type="submit" name="submit" value="Opslaan"></td>
            </tr>
        </table>
    </form>
    <?php

}

?>
