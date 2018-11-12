<?php 
require_once("app/functions/l.php"); 
require_once("app/functions/string.php"); 
require_once("app/functions/strip_output.php"); 
require_once("app/functions/menu_data.php"); 
require_once("app/functions/breadcrups.php"); 
$menu_data = new functions\menu_data(); 
$l = new functions\l(); 
$string = new functions\string(); 
echo $data['headerModule'];// assets

// $photo = (isset($data["pageData"]["photo"])) ? Config::WEBSITE_.$data["pageData"]["photo"] : "";
?>

<section class="MainSection" id="MainSection">
        <div class="SectionHeight">
            <div class="container-fluid AtoriContainer"> 
                <div class="ContactPage">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="ContactForm">
                                <div class="Title"><?=$data['pageData']['title']?></div>
                                <div class="Form" style="position: relative;">
                                    <div id="g-output" style="position: absolute; top: -25px; left: 0; font-size: 16px;"></div>
                                    <div class="AtoriInput"> 
                                        <input type="text" name="namelname" id="input1" autocomplete="off" class="namelname" />
                                        <label for="input1"><?=$l->translate("namelname")?></label>
                                    </div>
                                    <div class="AtoriInput">
                                        <input type="text" name="email" id="email" autocomplete="off" class="email" />
                                        <label for="email"><?=$l->translate("email")?></label>
                                    </div>
                                    <div class="AtoriInput">
                                        <input type="text" name="phone" id="phone" autocomplete="off" class="phone" />
                                        <label for="phone"><?=$l->translate("phone")?></label>
                                    </div>
                                    <div class="AtoriInput">
                                        <textarea name="message" id="message" class="message"></textarea> 
                                        <label for="message"><?=$l->translate("enquiry")?></label>
                                    </div>
                                    <a href="javascript:void(0)" class="Button1 animated fadeInUp sendEmail">
                                        <?=$l->translate("send")?>
                                    </a>
                                </div>
                            </div>
                        </div>

                                                                
                        <div class="col-sm-6 ">                  
                            <div class="ContactMapDiv">
                                <?php
                                $map_coordinates = explode(
                                    ",", 
                                    strip_tags($data["contact"][5]["map_coordinates"])
                                ); 

                                ?>
                                <div id="map-canvas" style="width:100%; height:100%;"></div>
                                <script>  
                                      var markerLatLng = new google.maps.LatLng(<?=$map_coordinates[0]?>, <?=$map_coordinates[1]?>);

                                      var mapOptions = {
                                        zoom: 19,
                                        center: markerLatLng,
                                        mapTypeId: google.maps.MapTypeId.ROADMAP,   
                                        disableDefaultUI: true,
                                        styles: [{"stylers": [{ "saturation": -100 }]}],
                                      };
                                      
                                      var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

                                      var markerIcon = {
                                            url: '<?=Config::PUBLIC_FOLDER?>img/<?=(isset($_SESSION["LANG"]) && $_SESSION["LANG"]=="ge") ? "map_ge.png" : "map_en.png"?>'
                                          };
                                      
                                      //var markerLabel = 'Burdzgla street N343';
                                      var marker = new google.maps.Marker({
                                        map: map,                                   
                                        animation: google.maps.Animation.DROP,
                                        position: markerLatLng,
                                        icon: markerIcon
                                      }); 

                                </script>
                                
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="ContactInfo">
                                <li class="Email">
                                    <?=strip_tags($data["contact"][1]["description"])?>
                                </li>
                                <li class="Pin">
                                    <?=strip_tags($data["contact"][2]["description"])?>
                                </li>
                                <li class="Mob">
                                    <a style="display: block;" href="tel:<?=strip_tags(str_replace(array(" ","&#10;","&nbsp;"),"",$data["contact"][0]["description"]))?>"><?=strip_tags($data["contact"][0]["description"])?></a>
                                    <a style="display: block;" href="tel:<?=strip_tags($data["contact"][6]["description"])?>"><?=strip_tags($data["contact"][6]["description"])?></a>
                                    <a style="display: block;" href="tel:<?=strip_tags($data["contact"][7]["description"])?>"><?=strip_tags($data["contact"][7]["description"])?></a>
                                </li>                            
                            </div>
                            <div class="ContactButtons">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <a href="<?=strip_tags($data["contact"][3]["description"])?>" class="Facebook" target="_blank"><?=$l->translate("follow")?></a>
                                    </div>
                                    <div class="col-sm-6">
                                        <a href="<?=strip_tags($data["contact"][4]["description"])?>" class="Messenger" target="_blank"><?=$l->translate("messageus")?></a>
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
    </section>

 
 
<footer class="Footer">
    <div class="container-fluid AtoriContainer">
        <div class="CopyRight">
            &copy; <?=$l->translate("footertext")?>
        </div>
    </div>
</footer> 

<?=$data['footer']?>