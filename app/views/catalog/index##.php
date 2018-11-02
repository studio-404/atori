<?php 
require_once("app/functions/l.php"); 
require_once("app/functions/strip_output.php"); 
require_once("app/functions/string.php"); 
require_once 'app/functions/request.php';
require_once 'app/functions/pagination.php';

$l = new functions\l(); 
$pagination = new functions\pagination(); 
echo $data['headerModule']; 

// echo "<pre>";
// print_r($data["photos"]);
// echo "</pre>";
?>

<section class="ProjectInside" id="MainSection">
		<div class="SectionHeight">
			<div class="container-fluid AtoriContainer_2">
				<div class="ApartamentDiv">
					<img src="<?=$data["pageData"]["photo"]?>"/>
				</div>
				<div class="ApartamentInfo">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-4 animated fadeInLeft">
								<div class="MobileSelectFloor">
									<select id="SelectOpenModal">
										<option>Floor 1</option>
										<option>Floor 2</option>
										<option>Floor 3</option>
										<option>Floor 4</option>
										<option>Floor 5</option>
										<option>Floor 6</option>
										<option>Floor 7</option>
										<option>Floor 8</option>
										<option>Floor 9</option>
										<option>Floor 10</option>
										<option>Floor 11</option>
										<option>Floor 12</option>
									</select>
									<div class="ApartInfoBox ApartInfoBox222">
										<div class="NumbersDiv">
											<div class="FloorNumber"></div>
											<div class="ApartNumber">To get started choose floor</div>											
											<div class="Floor">33</div>
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
							</div>
							<div class="col-sm-8 FullHeight">							
								<div class="MapAreaDiv animated fadeInUp">
									<img src="assets/korpisi_1.png" class="map" usemap="#features"/>
									<map name="features">
										<area shape="poly" coords="42, 327, 252, 239, 284, 233, 314, 236, 345, 223, 579, 324, 578, 268, 336, 159, 312, 168, 279, 169, 41, 276" data-toggle="modal" data-target="#PlanModal"/> 
									</map>
								</div>	 
								<div class="ApartRightDiv ApartGallery">
									<div class="CloseApartDiv"></div>
									<div class="BigImages">
										<?php foreach($data["photos"] as $item) :?>
										<div class="Image">
											<img src="<?=Config::WEBSITE.$_SESSION["LANG"]?>/image/loadimage?f=<?=Config::WEBSITE_.$item["path"]?>&w=769&h=402" />
										</div> 
										<?php endforeach; ?>										
									</div>
									<div class="SmallImages">
										<div class="row">
											<?php foreach($data["photos"] as $item) :?>
											<div class="Image">
												<img src="<?=Config::WEBSITE.$_SESSION["LANG"]?>/image/loadimage?f=<?=Config::WEBSITE_.$item["path"]?>&w=132&h=80" />
											</div> 
											<?php endforeach; ?> 
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
												zoom: 19,
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
								<div class="ApartRightDiv ApartTerms">
									<div class="CloseApartDiv"></div>
									<div class="TermsDivContent">
										<?=strip_tags($data["pageData"]["terms"],"<p><a><span><br><ul><li>")?>
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
				</div>
			</div>
		</div>
	</div>
</div> 
<div class="CalcBackgrond"></div> 
 
 
 
 
 

<div class="modal MyModal fade2" id="PlanModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog fadeIn animated">
        <div class="modal-content">
           <!--<div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div> -->
            <div class="modal-body">	
                <div class="Close" class="close" data-dismiss="modal" aria-label="Close"></div>
				
				<div class="FloorFirstModal">
					<div class="col-sm-6 zoomIn animated">
						<div class="ApartInfoBox ApartInfoBox222 ApartInfoBox333">
							<div class="NumbersDiv">
								<div class="FloorNumber">18</div>
								<div class="ApartNumber">9 properties left</div>
								<div class="Sold">1 sold</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6 zoomIn animated">
						<div class="FloorImageDiv"> 
							<img src="floors_img/floor_1.png" class="map" usemap="#PlaMap"/>
							<map name="PlaMap">
								<area class="masterTooltip" shape="poly" coords="3, 3, 3, 512, 154, 513, 155, 3" Size="<span>160</span>sqm" data-toggle="modal" data-target="#ApartamentModal"/> 
								<area class="masterTooltip" shape="poly" coords="156, 4, 310, 3, 310, 221, 156, 220" Size="<span>161</span>sqm" data-toggle="modal" data-target="#ApartamentModal"/> 
								<area class="masterTooltip" shape="poly" coords="311, 3, 548, 4, 547, 269, 405, 269, 405, 221, 311, 221" Size="<span>SOLD</span>" data-maphilight='{"stroke":false,"fillColor":"ffffff","fillOpacity":0.7,"alwaysOn":true}' data-toggle="modal" data-target="#ApartamentModal"/> 
								<area class="masterTooltip" shape="poly" coords="549, 3, 738, 3, 738, 87, 775, 88, 774, 160, 796, 160, 797, 320, 461, 319, 461, 271, 549, 269" Size="<span>164</span>sqm" data-toggle="modal" data-target="#ApartamentModal"/> 
								<area class="masterTooltip" shape="poly" coords="533, 322, 532, 478, 778, 478, 778, 398, 798, 397, 798, 322" Size="<span>165</span>sqm" data-toggle="modal" data-target="#ApartamentModal"/> 
							</map>
						</div>  
					</div>
				</div>
				
            </div> 
        </div>
    </div>
</div>
 
 
 
 
 
 
<div class="modal MyModal fade2" id="ApartamentModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog fadeIn animated" role="document">
        <div class="modal-content">
           <!--<div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div> -->
            <div class="modal-body">	
                <div class="Close" class="close" data-dismiss="modal" aria-label="Close"></div>
				
				<div class="ApartFirstModal">
					<div class="col-sm-6 zoomIn animated">
						<div class="ApartInfoBox">
							<div class="NumbersDiv">
								<div class="FloorNumber">18</div>
								<div class="ApartNumber">Appartment #134</div>
							</div>
							<div class="Info">
								<div class="Size"><span>160</span> sqm</div>
								<div class="List">
									<li><span>1</span>Living Room<label>54sqm</label></li>
									<li><span>2</span>Bathroom<label>12sqm</label></li>
									<li><span>3</span>Bedroom<label>25sqm</label></li>
									<li><span>4</span>Bedroom2<label>18sqm</label></li>
									<li><span>5</span>Bathroom 2<label>12sqm</label></li>
									<li><span>6</span>Balcony<label>12sqm</label></li>
								</div>
								<div class="Total">
									<div class="Name">Total Price</div>
									<div class="Price">56,500,00</div>
									<div class="PerSqm">Price per sqm <span>3500</span></div>
									<div class="CalculatorButton"></div>
								</div>
							</div>
							<div class="DownloadFile">
								<button>Download PDF floor plan</button>
							</div>
						</div>
					</div>
					<div class="col-sm-6 zoomIn animated">
						<div class="ApartImageDiv"> 
							<img src="apart_img/apart_1.png"/>
						</div>
					</div>
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
</script>
<?=$data['footer']?>

