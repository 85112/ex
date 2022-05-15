<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulier</title>
    <link rel="stylesheet" href="band_inlog.css">
</head>
<body>
<?php
if (isset($_POST['inlog']))
{
    require 'config.php';

    $Gebruikersnaam = $_POST['Gebruikersnaam'];
    $Wachtwoord = sha1($_POST['Wachtwoord']);
    $opdracht = "SELECT * FROM `back12_users` WHERE `Gebruikersnaam` = '$Gebruikersnaam' AND `Wachtwoord` = '$Wachtwoord'";

    $resultaat = mysqli_query($mysqli, $opdracht);

    if(mysqli_num_rows($resultaat) > 0)
    {
        $user = mysqli_fetch_array($resultaat);
        $_SESSION['Gebruikersnaam'] = $user['Gebruikersnaam'];
        $_SESSION['Level'] = $user['Level'];
        echo "<p>Hallo $Gebruikersnaam, u bent ingelogd</p>";
        echo "<p><a href='band_uitlees.php'>Ga verder</a></p>";
    }
    else
    {
        echo "<p>Naam en/of wachtwoord zijn onjuist</p>";
        echo "<p><a href='band_inlog.php'>Probeer opnieuw</a></p>";
    }
}
else{
    ?>
    <form method="POST" action="">
        <fieldset>
            <div class="contactgrid">
                <legend>Log In</legend>
                <label for="gebruikersnaamVeld">Gebruikersnaam</label>
                <input type="text" id="gebruikersnaamVeld" name="Gebruikersnaam">
                <label for="wachtwoordVeld">Wachtwoord</label>
                <input type="password" name="Wachtwoord" id="wachtwoordVeld" title="Gebruik 6 tekens" required>
                <input type="submit" name="inlog" value="LOG IN">
            </div>
        </fieldset>
    </form>
    <?php
}
?>
</body>
</html>