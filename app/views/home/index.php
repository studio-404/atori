<?php 
require_once("app/functions/l.php"); 
require_once("app/functions/string.php"); 
require_once("app/functions/strip_output.php"); 
require_once("app/functions/menu_data.php"); 
$menu_data = new functions\menu_data(); 
$l = new functions\l(); 
$string = new functions\string(); 
echo $data['headerModule'];// assets
?>
    
    <div class="HomeSlider">
        <div class="AtoriLogoBottom animated2 fadeInUp"></div>
        <div class="ChangeSliderProgres">
            <div class="progress"></div>
        </div>
        <div class="slider stick-dots">
            <?=$data["slider"]["list"]?>
        </div>
    </div>
    
    
    <div class="ContectButton animated fadeInUp">
        <a href="/<?=$_SESSION["LANG"]?>/contact-us">
        <div class="animated2 fadeIn"><div class="Text"><div class="arrow"></div> contact us </div></div>
        </a>
    </div>


<?=$data['footer']?>