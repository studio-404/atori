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
$photo = (isset($data["pageData"]["photo"])) ? Config::WEBSITE_.$data["pageData"]["photo"] : "";
?>

<section class="MainSection" id="MainSection">
        <div class="SectionHeight">
            <div class="container-fluid AtoriContainer">
                <div class="AboutPage">
                    <div class="AboutInfo animated fadeInUp">
                        <div class="Title"><?=$data['pageData']['title']?></div>
                        <div class="Text">
                            <?=strip_tags($data['pageData']['text'], "<h3><a><p><br><ul><ol><li>")?>
                        </div> 
                        
                        <!-- <div class="AvardsInfo">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="Item">
                                        <label>9</label>
                                        <span>Buildings</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="Item">
                                        <label>3</label>
                                        <span>Ongoing</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="Item">
                                        <label>7</label>
                                        <span>years</span>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                    </div>
                    <div class="AboutImage animated fadeInRight">
                        <!-- <a href="<?=Config::PUBLIC_FOLDER.$data["file"][0]["file_path"]?>" target="_blank">
                            <div class="CorporateBrochure">
                                <?=$l->translate("corporatebrochure")?>
                            </div>
                        </a> -->
                        <div class="Image"><img src="<?=$photo?>" /></div>
                    </div>
                </div>
            </div> 
        </div>
    </section>

     
     
    <footer class="Footer">
        <div class="container-fluid AtoriContainer">
            <div class="CopyRight">
                &copy; 2018 Atori Development & Enviroment
            </div>
        </div>
    </footer> 


<?=$data['footer']?>