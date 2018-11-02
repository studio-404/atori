<?php
class addPageForm 
{
	public $out; 

	public function __construct()
	{
		require_once 'app/core/Config.php';
		if(!isset($_SESSION[Config::SESSION_PREFIX."username"]))
		{
			exit();
		}
	}
	
	public function index(){
		require_once 'app/core/Config.php';
		require_once 'app/functions/makeForm.php';
		require_once 'app/functions/request.php';
		require_once 'app/functions/string.php';

		$this->out = array(
			"Error" => array(
				"Code"=>1, 
				"Text"=>"მოხდა შეცდომა !",
				"Details"=>"!"
			)
		);
		$form = "";
		$call = functions\request::index("POST","call");
		$cid = (int)functions\request::index("POST","cid");
		$lang = functions\request::index("POST","lang");
		$random = functions\string::random(25);

		$formrestrict = json_decode(file_get_contents("navigation.json"), true);
		$restrict = array();
		if(isset($formrestrict["add"][$cid])){
			$restrict = $formrestrict["add"][$cid];
		}

		// $form .= $formrestrict["add"][$cid]["chooseNavType"];

		$form .= functions\makeForm::open(array(
			"action"=>"?",
			"method"=>"post",
			"id"=>"",
			"id"=>"",
		));

		$form .= functions\makeForm::inputHidden(array(
			"name"=>"input_cid",
			"id"=>"input_cid",
			"value"=>"0"
		));

		$form .= functions\makeForm::inputHidden(array(
			"name"=>"lang",
			"id"=>"lang",
			"value"=>$lang
		));

		
		$disabled = ($_SESSION[Config::SESSION_PREFIX."username"]!="root") ? "true" : "false";
		$selected = ($_SESSION[Config::SESSION_PREFIX."username"]!="root") ? "text" : "false";


		if(!isset($restrict["chooseNavType"]) || $restrict["chooseNavType"]!="false"){
			$form .= functions\makeForm::label(array(
				"id"=>"chooseNavTypeLabel", 
				"for"=>"chooseNavType", 
				"name"=>"ნავიგაციის ტიპი",
				"require"=>""
			));
			$form .= functions\makeForm::select(array(
				"id"=>"chooseNavType",
				"choose"=>"აირჩიეთ ნავიგაციის ტიპი",
				"options"=>array("მთავარი", "დამატებითი"),
				"selected"=>"false",
				"disabled"=>false
			));
		}else{
			$form .= "<input type=\"hidden\" name=\"chooseNavType\" id=\"chooseNavType\" value=\"მთავარი\" />";
		}

		if(!isset($restrict["choosePageType"]) || $restrict["choosePageType"]!="false"){
			$form .= functions\makeForm::label(array(
				"id"=>"choosePageTypeLabel", 
				"for"=>"choosePageType", 
				"name"=>"გვერდის ტიპი",
				"require"=>""
			));
			$form .= functions\makeForm::select(array(
				"id"=>"choosePageType",
				"choose"=>"აირჩიეთ გვერდის ტიპი",
				"options"=>array(
					"text"=>"ტექსტური",
					"news"=>"სიახლეები", 
					"plugin"=>"პლაგინი",
					"catalog"=>"კატალოგი"
				),
				"selected"=>$selected,
				"disabled"=>$disabled
			));
		}else{
			$form .= "<input type=\"hidden\" name=\"choosePageType\" id=\"choosePageType\" value=\"text\" />";
		}

		
		if(!isset($restrict["title"]) || $restrict["title"]!="false"){
			$form .= functions\makeForm::label(array(
				"id"=>"titleLabel", 
				"for"=>"title", 
				"name"=>"დასახელება",
				"require"=>""
			));
			$form .= functions\makeForm::inputText(array(
				"placeholder"=>"დასახელება", 
				"id"=>"title", 
				"name"=>"title",
				"value"=>""
			));
		}else{
			$form .= "<input type=\"hidden\" name=\"title\" id=\"title\" value=\"\" />";
		}


		if(!isset($restrict["slug"]) || $restrict["slug"]!="false"){
			$form .= functions\makeForm::label(array(
				"id"=>"slugLabel", 
				"for"=>"slug", 
				"name"=>"ბმული",
				"require"=>""
			));
			$form .= functions\makeForm::inputText(array(
				"placeholder"=>"ბმული", 
				"id"=>"slug", 
				"name"=>"slug",
				"value"=>""
			));
		}else{
			$form .= "<input type=\"hidden\" name=\"slug\" id=\"slug\" value=\"slug".time()."\" />";
		}

		if(!isset($restrict["cssClass"]) || $restrict["cssClass"]!="false"){
			$form .= functions\makeForm::label(array(
				"id"=>"cssClassLabel", 
				"for"=>"cssClass", 
				"name"=>"კლასი",
				"require"=>""
			));
			$form .= functions\makeForm::inputText(array(
				"placeholder"=>"კლასი", 
				"id"=>"cssClass", 
				"name"=>"cssClass",
				"value"=>""
			));
		}else{
			$form .= "<input type=\"hidden\" name=\"cssClass\" id=\"cssClass\" value=\"\" />";
		}


		$parentModuleOptions = new Database('modules', array(
			'method'=>'parentModuleOptions', 
			'lang'=>'ge'
		));

		if(!isset($restrict["attachModule"]) || $restrict["attachModule"]!="false"){
			$form .= functions\makeForm::label(array(
				"id"=>"attachModuleLabel", 
				"for"=>"attachModule", 
				"name"=>"მოდული",
				"require"=>""
			));
			$form .= functions\makeForm::select(array(
				"id"=>"attachModule",
				"choose"=>"მიამაგრე მოდული",
				"options"=>$parentModuleOptions->getter(),
				"selected"=>"false",
				"disabled"=>"false"
			));
		}else{
			$form .= "<input type=\"hidden\" name=\"attachModule\" id=\"attachModule\" value=\"\" />";
		}


		if(!isset($restrict["redirect"]) || $restrict["redirect"]!="false"){
			$form .= functions\makeForm::label(array(
				"id"=>"redirectLabel", 
				"for"=>"redirect", 
				"name"=>"გადამისამართება",
				"require"=>""
			));
			$form .= functions\makeForm::inputText(array(
				"placeholder"=>"გადამისამართება", 
				"id"=>"redirect", 
				"name"=>"redirect",
				"value"=>"" 
			));
		}else{
			$form .= "<input type=\"hidden\" name=\"redirect\" id=\"redirect\" value=\"\" />";
		}

		if(!isset($restrict["pageDescription"]) || $restrict["pageDescription"]!="false"){		
			$form .= functions\makeForm::label(array(
				"id"=>"shortDescription", 
				"for"=>"pageDescription", 
				"name"=>"მოკლე აღწერა ( Fb გაზიარების ტექსტი )",
				"require"=>""
			));

			$form .= functions\makeForm::textarea(array(
				"id"=>"pageDescription",
				"name"=>"pageDescription",
				"placeholder"=>"მოკლე აღწერა",
				"value"=>""
			));
		}else{
			$form .= "<input type=\"hidden\" name=\"pageDescription\" id=\"pageDescription\" value=\"\" />";
		}
		// if($_SESSION[Config::SESSION_PREFIX."username"]=="root"){}

		if(!isset($restrict["pageText"]) || $restrict["pageText"]!="false"){
			$form .= functions\makeForm::label(array(
				"id"=>"longDescription", 
				"for"=>"pageText", 
				"name"=>"ვრცელი აღწერა",
				"require"=>""
			));

			$form .= functions\makeForm::textarea(array(
				"id"=>"pageText",
				"name"=>"pageText",
				"placeholder"=>"ვრცელი აღწერა",
				"value"=>""
			));
		}else{
			$form .= "<input type=\"hidden\" name=\"pageText\" id=\"pageText\" value=\"\" />";
		}

		if(!isset($restrict["terms"]) || $restrict["terms"]!="false"){
			$form .= functions\makeForm::label(array(
				"id"=>"termsLabel", 
				"for"=>"terms", 
				"name"=>"ვადები",
				"require"=>""
			));

			$form .= functions\makeForm::textarea(array(
				"id"=>"terms",
				"name"=>"terms",
				"placeholder"=>"ვადები",
				"value"=>""
			));
		}else{
			$form .= "<input type=\"hidden\" name=\"terms\" id=\"terms\" value=\"\" />";
		}

		if(isset($restrict["aditionaljson"]) && $restrict["aditionaljson"]!="NULL"){
			foreach ($restrict["aditionaljson"] as $k => $v) {
				if($v==NULL || $v=="NULL"){ continue; }
				$form .= functions\makeForm::label(array(
					"id"=>$k."Label", 
					"for"=>$k, 
					"name"=>$v,
					"require"=>""
				));
				$form .= functions\makeForm::inputText(array(
					"placeholder"=>"", 
					"id"=>$k, 
					"name"=>$k, 
					"value"=>""
				));
			}
		}


		if(!isset($restrict["map_coordinates"]) || $restrict["map_coordinates"]!="false"){
			/* Map start*/
			$form .= "<label>რუკის კორდინატები: </label>";
			$form .= sprintf(
	  			"<input type=\"hidden\" name=\"map_coordinates\" id=\"map_coordinates\" value=\"\" />"
	  		);
	        $form .= "<div style=\"clear:both; margin-bottom:10px;\"></div>";	        

	  		$form .= "<div id=\"map\" style=\"width:100%; height:250px; margin-bottom: 30px;\"></div>";

	  		$form .= "
	  		<script type=\"text/javascript\">
			var map;
			function initMap() {
				var locationRio = {lat: 41.694618163949855, lng: 44.80085620117188};
				$('#map_coordinates').val(locationRio.lat+','+locationRio.lng);

				map = new google.maps.Map(document.getElementById('map'), {
			        zoom: 13,
			        center: locationRio,
			        gestureHandling: 'cooperative'
				});

				var locations = [
			  		['marker', locationRio.lat, locationRio.lng]
			    ];
			    var bounds = new google.maps.LatLngBounds();
				var marker, i;

			    for (i = 0; i < locations.length; i++) {  
					if(locations[i][1]==0 || locations[i][2]==0){
						$(\".map-title\").hide();
						$(\"#map\").hide();
						break;
					}
					marker = new google.maps.Marker({
						position: new google.maps.LatLng(locations[i][1], locations[i][2]),
						map: map,
						animation: google.maps.Animation.DROP,
						title: locations[i][0],
						draggable:true
					});

					bounds.extend(marker.position);
			    }
			    map.fitBounds(bounds);

			    var listener = google.maps.event.addListener(map, \"idle\", function() { 
				  if (map.getZoom() > 14) map.setZoom(14); 
				  google.maps.event.removeListener(listener); 
				});

				google.maps.event.addListener(marker, 'drag', function() {
				    var latLng = marker.getPosition();
				    $('#map_coordinates').val(latLng.lat()+','+latLng.lng());
				});
			}

			</script>
			<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=".Config::GOOGLE_API_KEY."&amp;callback=initMap\" type=\"text/javascript\"></script>
			";
			/* Map end*/
		}else{
			$form .= "<input type=\"hidden\" name=\"map_coordinates\" id=\"map_coordinates\" value=\"\" />";
		}


		if(!isset($restrict["photoUploaderBox"]) || $restrict["photoUploaderBox"]!="false"){
			$form .= functions\makeForm::label(array(
				"id"=>"photoLabel", 
				"for"=>"photo", 
				"name"=>"ფოტოს მიმაგრება",
				"require"=>""
			));
			$form .= "<div class=\"row\" id=\"photoUploaderBox\" style=\"margin:0 -10px\">";
			
			$form .= "<div class=\"col s4 imageItem\" id=\"img1\">
				<div class=\"card\">
		    
		    		<div class=\"card-image waves-effect waves-block waves-light\">
		    			<input type=\"hidden\" name=\"managerFiles[]\" class=\"managerFiles\" value=\"\" />
		      			<img class=\"activator\" src=\"/public/img/noimage.png\" />
		    		</div>

		    		<div class=\"card-content\">
	                	<p>
	                		<a href=\"javascript:void(0)\" onclick=\"openFileManager('photoUploaderBox', 'img1')\" class=\"large material-icons\">mode_edit</a>
	                		<a href=\"javascript:void(0)\" onclick=\"removePhotoItem('img1')\" class=\"large material-icons\">delete</a>
	                	</p>
	              	</div>

	    		</div>
	  		</div>";				

	  		$form .= "</div>";
  		}
  		
  		$form .= "<div style=\"clear:both\"></div>";

  		if(!isset($restrict["file_attach_type"]) || $restrict["file_attach_type"]!="false"){
	  		$form .= "<div class=\"input-field\">
	            <label>ფაილის მიმაგრება: </label>
	          </div>";

	        $form .= "<div style=\"clear:both\"></div>";

	        $form .= "<a href=\"javascript:void(0)\" class=\"waves-effect waves-light btn margin-bottom-20\" style=\"clear:both; margin-top: 40px;\" onclick=\"openFileManagerForFiles('attachfiles')\"><i class=\"material-icons left\">note_add</i>ატვირთვა</a>";

	  		$form .= "<input type=\"hidden\" name=\"random\" id=\"random\" value=\"".$random."\" />";
	  		$form .= "<input type=\"hidden\" name=\"file_attach_type\" id=\"file_attach_type\" value=\"page\" />";
	  		$form .= "<ul class=\"collection with-header\" id=\"sortableFiles-box\">";


	      	$form .= "</ul>";
      	}
      	
		$form .= functions\makeForm::close();

		if($call == "true"){
			$this->out = array(
				"Error" => array(
					"Code"=>0, 
					"Text"=>"ოპერაცია შესრულდა წარმატებით !",
					"Details"=>""
				),
				"form" => $form,
				"attr" => "formPageAdd()"
			);	
		}

		return $this->out;
	}

}
?>