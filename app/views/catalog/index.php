<?php 
require_once("app/functions/l.php"); 
require_once("app/functions/strip_output.php"); 
require_once("app/functions/string.php"); 
require_once 'app/functions/request.php';
require_once 'app/functions/pagination.php';
require_once 'app/functions/detectMobile.php';

$l = new functions\l(); 
$pagination = new functions\pagination(); 
echo $data['headerModule']; 

 $imageMap = "";

if(functions\detectMobile::index()){
	// $path = Config::WEBSITE."/ge/"
	if($data["pageData"]["idx"]==141){ $imageMap = "/public/filemanager/projects/abashidze55/imap.png"; }
	if($data["pageData"]["idx"]==178){ $imageMap = "/public/filemanager/projects/atori/korpusi_2.png"; }
}else{
	if($data["pageData"]["idx"]==141){ $imageMap = "/public/filemanager/projects/abashidze55/imap.png"; }
	if($data["pageData"]["idx"]==178){ $imageMap = "/public/filemanager/projects/atori/korpusi_2.png"; }
}

?> 

<section class="ProjectInside" id="MainSection">
		<div class="SectionHeight">
			<div class="container-fluid AtoriContainer_2">
				<div class="ApartamentDiv">
					<img src="<?=(isset($data["photos"][1]["path"])) ? Config::WEBSITE.$_SESSION["LANG"]."/image/loadimage?f=".Config::WEBSITE_.$data["photos"][1]["path"]."&w=1400&h=600" : ''?>"/>
				</div>
				<div class="ApartamentInfo">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-4 animated fadeInLeft">
								<div class="MobileSelectFloor">
									<select id="SelectOpenModal">
										<?php
										if($data["pageData"]["idx"]!=178){// if not atori 
										?>
										<option value=""><?=$l->translate("choosefloor")?></option> 
										<?php
										foreach($data["floors"] as $floor): 
											$floorNum = 0;
											if(preg_match("/\d+/", $floor["title"], $match)){
												$floorNum = $match[0];
											}
										?>
											<option value="<?=$floor["idx"]?>" data-floor="<?=$floorNum?>"><?=$floor["title"]?></option>
										<?php 
										endforeach;
										}
										?>
									</select>
									<div class="ApartInfoBox ApartInfoBox222">
										<div class="NumbersDiv">
											<div class="FloorNumber"></div>
											<div class="ApartNumber">
												<?php
												if($data["pageData"]["idx"]!=178){
													echo $l->translate("choosefloor");
												}else{
													echo ($_SESSION["LANG"]=="en") ? "Comming soon" : "მალე";
												} 
												?>
											</div>											
											<div class="Floor">
												<?php /* echo count($data["floors"]); */ ?>
												<i class="fa fa-chevron-down"></i>
											</div>
										</div>
									</div>
								</div>
								<div class="InfoBox">
									<div class="Head">
										<?=$data["pageData"]["title"]?>
										<div class="CloseIcon" data-toggle="collapse" data-target="#CloseAtor"></div>
									</div>
									<div class="Content collapse in" id="CloseAtor">
										<div class="Text">
											<?=strip_tags($data["pageData"]["text"],"<p><a><span><br><ul><li>")?>
										</div>
										<div class="Features">
											<div class="Title"><?=$l->translate("features")?></div>
											<div class="row">
												<div class="col-sm-4">
													<div class="Item Stories">
														<div class="Icon"></div>
														<div class="Number"><?=$data["pageData"]["aditional3"]?></div>
														<div class="Name"><?=$l->translate("stories")?></div>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="Item Recreation">
														<div class="Icon"></div>
														<div class="Number"><?=$data["pageData"]["aditional4"]?></div>	
														<div class="Name"><?=$l->translate("recreation")?></div>											
													</div>
												</div>
												<div class="col-sm-4">
													<div class="Item Parking">
														<div class="Icon"></div>
														<div class="Number"><?=$data["pageData"]["aditional5"]?></div>
														<div class="Name"><?=$l->translate("parking")?></div>
													</div>
												</div>
											</div>	
										</div>
									</div>
								</div>

								<div class="RightIcons">
									<li class="OpenGallery"><div class="Icon Gallery"></div><span><?=$l->translate("gallery")?></span></li>
									<li class="OpenLocation"><div class="Icon Location"></div><span><?=$l->translate("location")?></span></li>
									<li class="OpenTerms"><div class="Icon Terms"></div><span><?=$l->translate("terms")?></span></li>
								</div>
							</div>
							<div class="col-sm-8 FullHeight">			
								<div class="MapAreaDiv animated fadeInUp">
									<img src="<?=$imageMap?>" class="map" usemap="#features"/>
									<map name="features">
										<?php 
										foreach($data["floors"] as $floor): 
											if($data["pageData"]["idx"]==178){//atori
												$size = ($_SESSION["LANG"]=="en") ? "Comming soon" : "მალე";
												$class = "UnderConstruction";
											}else{//abashidze
												preg_match("/\d+/", $floor["title"], $match);
												$intFloor = (isset($match[0]) && is_numeric($match[0])) ? (int)$match[0] : 0;


												$usefull_type = $floor["usefull_type"];

												$aval = new Database("modules", array(
													"method"=>"countAvaliableFloors",
													"type"=>$usefull_type
												));

												$label = sprintf(
													"%s %s",
													$aval->getter(),
													$l->translate("leftproperty")
												);
												//9 properties left
												$size = "<div class=\"FloorToolTip\"><span>{$intFloor}</span><label>{$label}</label></div>";
												$class = "g-floor FloorHover";
											}
										?>
										<area shape="poly" coords="<?=$floor["aditional1"]?>" data-floorid="<?=$floor["idx"]?>" size="<?=htmlentities($size)?>" class="<?=$class?>" /> 
										<?php endforeach; ?>
									</map>
								</div>	 
								<div class="ApartRightDiv ApartGallery">
									<div class="CloseApartDiv"></div>
									<div class="BigImages">
										<?php 
										foreach($data["photos"] as $item) :
										?>
										<div class="Image">
											<img src="<?=Config::WEBSITE.$_SESSION["LANG"]?>/image/loadimage?f=<?=Config::WEBSITE_.$item["path"]?>&w=769&h=402" />
										</div> 
										<?php 
										endforeach; 
										?>										
									</div>
									<div class="SmallImages">
										<div class="row">
											<?php 
											foreach($data["photos"] as $item) :
											?>
											<div class="Image">
												<img src="<?=Config::WEBSITE.$_SESSION["LANG"]?>/image/loadimage?f=<?=Config::WEBSITE_.$item["path"]?>&w=132&h=80" />
											</div> 
											<?php 
											endforeach; 
											?> 
										</div>
									</div>
								</div>
								<div class="ApartRightDiv ApartLocation">
									<div class="CloseApartDiv"></div>
									<div class="ContactMapDiv">
										<div id="map-canvas" style="width:100%; height:100%;"></div>
										<script>  
											<?php
											$map = $data["pageData"]["map"]; 
											$map = explode(",", $map);
											$lat = (isset($map[0])) ? trim($map[0], " ") : "41.7232271";
											$long = (isset($map[1])) ? trim($map[1], " ") : "44.7604646";
											?>
											  var markerLatLng = new google.maps.LatLng(<?=$lat?>, <?=$long?>);

											  var mapOptions = {
												zoom: 16,
												center: markerLatLng,
												disableDefaultUI: true,
												mapTypeId: google.maps.MapTypeId.ROADMAP,	
												styles: [{"stylers": [{ "saturation": -100 }]}],
											  };
											  
											  var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

											  var markerIcon = {
													url: '<?=Config::PUBLIC_FOLDER?>img/map_pin.png',
													scaledSize: new google.maps.Size(38, 49),
													origin: new google.maps.Point(0, 0),
													anchor: new google.maps.Point(32,65)
												  };
											  
											  var marker = new google.maps.Marker({
												map: map,
												animation: google.maps.Animation.DROP,
												position: markerLatLng,
												icon: markerIcon
											  }); 

										</script>									
									</div>								
								</div>
								<div class="ApartRightDiv ApartTerms">
									<div class="CloseApartDiv"></div>
									<div class="TermsDivContent">
										<?=strip_tags($data["pageData"]["terms"],"<p><a><span><br><ul><li>")?>
									</div>
								</div>
							</div>
						</div>	
					</div>
					
					
					
				</div>
			</div> 
		</div>
	</section>


<div class="CalcParentDiv">
	<div class="row">
		<div class="col-sm-6"></div>
		<div class="col-sm-6">
			<div class="Calculator">
				<div class="Title">Morgage Calculator</div>
				<div class="Form">
					<div class="AtoriInput"> 
						<input type="text" name="Full" id="input1" autocomplete="name"/>
						<label for="input1">Appartment price</label>
					</div>
					<div class="AtoriInput">
						<input type="text" name="Full" id="input2" autocomplete="name"/>
						<label for="input2">Downpayment</label>
					</div>
					<div class="AtoriInput">
						<input type="text" name="Full" id="input3" autocomplete="name"/>
						<label for="input3">Number of years</label>
					</div>
					<div class="AtoriSelect">
						<select class="selectpicker">
							<option>Choose an options bank</option>
							<option>TBC</option>
							<option>BOG</option>
						</select>
					</div>
					<a href="#" class="Button2">
						Calculate
					</a>
					<a href="#" class="Button2 closeCalc" style="margin-left: 10px;">
						close
					</a>
				</div>
			</div>
		</div>
	</div>
</div> 
<div class="CalcBackgrond"></div> 
 
 
 
 
 

<div class="modal MyModal fade2" id="PlanModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog fadeIn animated">
        <div class="modal-content">
            <div class="modal-body">	
                <div class="Close" class="close" data-dismiss="modal" aria-label="Close"></div>
				
				<div class="FloorFirstModal">
					<!-- ... -->
				</div>
				
            </div> 
        </div>
    </div>
</div>
 
 
 
 
 
 
<div class="modal MyModal fade2" id="ApartamentModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog fadeIn animated" role="document">
        <div class="modal-content">
            <div class="modal-body">	
                <div class="Close" class="close" data-dismiss="modal" aria-label="Close"></div>
				
				<div class="ApartFirstModal">
					<!-- -->
				</div>
				
            </div> 
        </div>
    </div>
</div> 

<script type="text/javascript">
$(document).ready(function(){
	$('.BigImages').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: true,
		fade: true,
		speed: 900,
		cssEase: 'cubic-bezier(0.7, 0, 0.3, 1)',
		touchThreshold: 100,
		asNavFor: '.SmallImages .row'
	});
	$('.SmallImages .row').slick({
		slidesToShow: 6,
		slidesToScroll: 1,
		asNavFor: '.BigImages',
		dots: false,
		arrows: false,
		//centerMode: true,
		focusOnSelect: true,
		responsive: [
		{
		  breakpoint: 1024,
		  settings: {
			slidesToShow: 3,
			slidesToScroll: 3, 
		  }
		} 
	  ]
	});
});

$("body").addClass("ApartInside");
</script>
<?=$data['footer']?>

