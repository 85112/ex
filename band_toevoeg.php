<?php
require 'session.php';
require 'config.php';
?>

<h2>Voeg een band toe:</h2>
 <form name="form1" method="post" action="band_toevoeg_verwerk.php">
 <table>
 <label for="Naam"> Bandnaam:</label>
 <input type="text" id="Naam" name="Naam" value=""><br>
 <label for="Land"> Land van herkomst:</label>
 <input type="text" id="Land" name="Land" value=""><br>
 <label for="AantalLeden"> Aantal leden:</label>
 <input type="text" id="AantalLeden" name="AantalLeden" value=""><br>
 <label for="Muzieksoort"> Soort muziek:</label>
 <input type="text" id="Muzieksoort" name="Muzieksoort" value=""><br>
 <label for="Info">Algemene info:</label>
 <input type="text" id="Info" name="Info" value=""><br>
 <input type="submit" value="verstuur">
 </table>

 </form>
<?php
echo "<br>";
echo "<p><a href='band_uitlees.php'>Lees uit</p>";
?>