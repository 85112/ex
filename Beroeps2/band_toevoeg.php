<?php
require 'session.php';
require 'config.php';
?>
<style type="text/css">
	
body {
  align-items: center;
background-color: #15172b ;
 /* display: flex;*/
  justify-content: center;
  height: 100vh;
}

.form {
  background-color: #15172b;
  border-radius: 20px;
  box-sizing: border-box;
  height: 650px;
  padding: 20px;
  width: 320px;
}

.title {
  color: #eee;
  font-family: sans-serif;
  font-size: 36px;
  font-weight: 600;
  margin-top: 30px;
}

.subtitle {
  color: #eee;
  font-family: sans-serif;
  font-size: 16px;
  font-weight: 600;
  margin-top: 10px;
}

.input-container {
  height: 50px;
  position: relative;
  width: 100%;
}

.ic1 {
  margin-top: 40px;
}

.ic2 {
  margin-top: 30px;
}

.input {
  background-color: #303245;
  border-radius: 12px;
  border: 0;
  box-sizing: border-box;
  color: #eee;
  font-size: 18px;
  height: 100%;
  outline: 0;
  padding: 4px 20px 0;
  width: 100%;
}

.cut {
  background-color: #15172b;
  border-radius: 10px;
  height: 20px;
  left: 20px;
  position: absolute;
  top: -20px;
  transform: translateY(0);
  transition: transform 200ms;
  width: 76px;
}

.cut-short {
  width: 50px;
}

.input:focus ~ .cut,
.input:not(:placeholder-shown) ~ .cut {
  transform: translateY(8px);
}

.placeholder {
  color: #65657b;
  font-family: sans-serif;
  left: 20px;
  line-height: 14px;
  pointer-events: none;
  position: absolute;
  transform-origin: 0 50%;
  transition: transform 200ms, color 200ms;
  top: 20px;
}

.input:focus ~ .placeholder,
.input:not(:placeholder-shown) ~ .placeholder {
  transform: translateY(-30px) translateX(10px) scale(0.75);
}

.input:not(:placeholder-shown) ~ .placeholder {
  color: #808097;
}

.input:focus ~ .placeholder {
  color: #dc2f55;
}

.submit {
  background-color: #08d;
  border-radius: 12px;
  border: 0;
  box-sizing: border-box;
  color: #eee;
  cursor: pointer;
  font-size: 18px;
  height: 50px;
  margin-top: 38px;
  // outline: 0;
  text-align: center;
  width: 100%;
}

.submit:active {
  background-color: #06b;
}

a{
    color:white;
    text-decoration: none;
}



</style>

<!-- <h2>Voeg een band toe:</h2>
 <form name="form1" method="post" action="band_toevoeg_verwerk.php">
 <table>
 <label for="Naam"> Bandnaam:</label>
 <input type="text" id="Naam" name="Naam" value=""><br>
 <label for="Land"> Land van herkomst:</label>
 <input type="text" id="Land" name="Land" value=""><br>
 <label for="AantalLeden"> Aantal leden:</label>
 <input type="number" id="AantalLeden" name="AantalLeden" value=""><br>
 <label for="Muzieksoort"> Soort muziek:</label>
 <input type="text" id="Muzieksoort" name="Muzieksoort" value=""><br>
 <label for="Info">Algemene info:</label>
 <input type="text" id="Info" name="Info" value=""><br>
 <input type="submit" value="verstuur">
 </table> -->
<!-- 
 </form> -->
<center>
<form name="form1" method="post" action="band_toevoeg_verwerk.php" class="form">
      <div class="title">Voeg een band toe</div>
      <div class="input-container ic1">
        <input name="Naam" id="Naam" class="input" type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="Naam" class="placeholder">Bandnaam</label>
      </div>
      <div class="input-container ic2">
        <input name="Land" id="Land" class="input" type="text" placeholder=" " />
        <div class="cut"></div>
        <label for="Land" class="placeholder">Land van herkomst</label>
      </div>
      <div class="input-container ic2">
        <input name="AantalLeden" id="AantalLeden" class="input" type="number" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="AantalLeden" class="placeholder">Aantal leden</>
      </div>
      <div class="input-container ic2">
        <input name="Muzieksoort" id="Muzieksoort" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="Muzieksoort" class="placeholder">Soort muziek</>
      </div>
      <div class="input-container ic2">
        <input name="Info" id="Info" class="input" type="text" placeholder=" " />
        <div class="cut cut-short"></div>
        <label for="Info" class="placeholder">Algemene info</>
      </div>
      <input type="submit" value="submit" class="submit">
</form>



<?php
echo "<br>";
echo "<h3><a href='band_uitlees.php'>Lees uit</h3>";
?>
</center>