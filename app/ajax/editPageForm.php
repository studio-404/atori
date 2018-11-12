<?php 
class editPageForm
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

		$form = "";
		$output = array();
		$idx = functions\request::index("POST","idx");
		$lang = functions\request::index("POST","lang");
		$random = functions\string::random(25);

		if($idx == "" || $lang == "")
		{
			$this->out = array(
				"Error" => array(
					"Code"=>1, 
					"Text"=>"მოხდა შეცდომა !",
					"Details"=>"!"
				)
			);
		}
		else
		{
			$Database = new Database('page', array(
				'method'=>'selectById', 
				'idx'=>$idx,
				'lang'=>$lang 
			));
			$output = $Database->getter();

			$formrestrict = json_decode(file_get_contents("navigation.json"), true);
			$restrict = array();
			if(isset($formrestrict["edit"][$idx])){
				$restrict = $formrestrict["edit"][$idx];
			}else if(isset($formrestrict["add"][$output["cid"]])){
				$restrict = $formrestrict["add"][$output["cid"]];
			}

			$photos = new Database('photos', array(
				'method'=>'selectByParent', 
				'idx'=>$idx, 
				'lang'=>$lang, 
				'type'=>$output['type'] 
			));
			$pictures = $photos->getter();

			$file = new Database('file', array(
				'method'=>'selectFilesByPageId', 
				'page_id'=>$idx, 
				'lang'=>$lang,
				'type'=>"page" 
			));
			$files = $file->getter();

			$form .= functions\makeForm::open(array(
				"action"=>"?",
				"method"=>"post",
				"id"=>""
			));

			$disabled = ($_SESSION[Config::SESSION_PREFIX."username"]!="root") ? "true" : "false";

			
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
					"selected"=>$output['nav_type'],
					"disabled"=>$disabled 
				));
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
					"selected"=>$output['type'],
					"disabled"=>$disabled
				));
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
					"value"=>$output['title']
				));
			}else{
				$form .= "<input type=\"hidden\" name=\"title\" id=\"title\" value=\"{$output['title']}\" />";
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
					"value"=>$output['slug'],
					"readonly"=>true
				));
			}else{
				$form .= "<input type=\"hidden\" name=\"slug\" id=\"slug\" value=\"{$output['slug']}\" />";
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
					"value"=>$output['cssclass']
				));
			}else{
				$form .= "<input type=\"hidden\" name=\"cssClass\" id=\"cssClass\" value=\"{$output['cssClass']}\" />";
			}

			$parentModuleOptions = new Database('modules', array(
				'method'=>'parentModuleOptions', 
				'lang'=>$lang
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
					"selected"=>$output['usefull_type'],
					"disabled"=>"false"
				));
			}else{
				$form .= "<input type=\"hidden\" name=\"attachModule\" id=\"attachModule\" value=\"{$output['usefull_type']}\" />";
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
					"value"=>$output['redirect']
				));
			}else{
				$form .= "<input type=\"hidden\" name=\"redirect\" id=\"redirect\" value=\"{$output['redirect']}\" />";
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
					"value"=>$output['description']
				));
			}else{
				$form .= "<input type=\"hidden\" name=\"pageDescription\" id=\"pageDescription\" value=\"{$output['description']}\" />";
			}

			if(!isset($restrict["pageText"]) || $restrict["pageText"]!="false"){
				$form .= functions\makeForm::label(array(
					"id"=>"longDescription", 
					"for"=>"pageText", 
					"name"=>"აღწერა",
					"require"=>""
				));

				$form .= functions\makeForm::textarea(array(
					"id"=>"pageText",
					"name"=>"pageText",
					"placeholder"=>"აღწერა", 
					"value"=>$output['text'] 
				));
			}else{
				$form .= "<input type=\"hidden\" name=\"pageText\" id=\"pageText\" value=\"{$output['text']}\" />";
			}

			if(!isset($restrict["terms"]) || $restrict["terms"]!="false"){
				$form .= functions\makeForm::label(array(
					"id"=>"termsLabel", 
					"for"=>"terms", 
					"name"=>"დეტალური ინფორმაცია",
					"require"=>""
				));

				$form .= functions\makeForm::textarea(array(
					"id"=>"terms",
					"name"=>"terms",
					"placeholder"=>"დეტალური ინფორმაცია",
					"value"=>$output['terms']
				));
			}else{
				$form .= "<input type=\"hidden\" name=\"terms\" id=\"terms\" value=\"{$output['terms']}\" />";
			}

			//
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
						"value"=>$output[$k]
					));
				}
			}



			// if($json){
				
			// }


			$map = (isset($output["map"]) && !empty($output["map"])) ? $output["map"] : '41.694618163949855, 44.80085620117188';
			$map_expl = explode(",", $map);
			$lat = (isset($map_expl[0])) ? $map_expl[0] : '41.694618163949855';
			$long = (isset($map_expl[1])) ? $map_expl[1] : '44.80085620117188';
			if(!isset($restrict["map_coordinates"]) || $restrict["map_coordinates"]!="false"){
				/* Map start*/
				$form .= "<label>რუკის კორდინატები: </label>";
				$form .= sprintf(
		  			"<input type=\"hidden\" name=\"map_coordinates\" id=\"map_coordinates\" value=\"{$map}\" />"
		  		);
		        $form .= "<div style=\"clear:both; margin-bottom:10px;\"></div>";	        

		  		$form .= "<div id=\"map\" style=\"width:100%; height:250px; margin-bottom: 30px;\"></div>";

		  		$form .= "
		  		<script type=\"text/javascript\">
				var map;
				function initMap() {
					var locationRio = {lat: {$lat}, lng: {$long}};
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
				$form .= "<input type=\"hidden\" name=\"map_coordinates\" id=\"map_coordinates\" value=\"{$lat},{$long}\" />";
			}


			if(!isset($restrict["photoUploaderBox"]) || $restrict["photoUploaderBox"]!="false"){
				$form .= functions\makeForm::label(array(
					"id"=>"photoLabel", 
					"for"=>"photo", 
					"name"=>"ფოტოს მიმაგრება",
					"require"=>""
				));
				$form .= "<div class=\"row\" id=\"photoUploaderBox\" style=\"margin:0 -10px\">";

				if(count($pictures)){
					$i = 2;
					
					foreach($pictures as $picture) {
						$form .= "<div class=\"col s4 imageItem\" id=\"img".$i."\">
							<div class=\"card\">
					    		<div class=\"card-image waves-effect waves-block waves-light\">
					    			<input type=\"hidden\" name=\"managerFiles[]\" class=\"managerFiles\" value=\"".$picture['path']."\" />
					      			<img class=\"activator\" src=\"".Config::WEBSITE.$lang."/image/loadimage?f=".Config::WEBSITE_.$picture["path"]."&w=215&h=173\" />
					    		</div>

					    		<div class=\"card-content\">
				                	<p>
				                		<a href=\"javascript:void(0)\" onclick=\"openFileManager('photoUploaderBox', 'img".$i."')\" class=\"large material-icons\">mode_edit</a>
				                		<a href=\"javascript:void(0)\" onclick=\"removePhotoItem('img".$i."')\" class=\"large material-icons\">delete</a>
				                	</p>
				              	</div>

				    		</div>
				  		</div>";
				  		$i++;
					}
				}

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
	          
	        	$form .= "<a href=\"javascript:void(0)\" class=\"waves-effect waves-light btn margin-bottom-20\" style=\"clear:both; margin-top: 40px;\" onclick=\"openFileManagerForFiles('attachfiles')\"><i class=\"material-icons left\">note_add</i>ატვირთვა</a>";

	        	$form .= "<input type=\"hidden\" name=\"random\" id=\"random\" value=\"".$random."\" />";
	        	$form .= "<input type=\"hidden\" name=\"file_attach_type\" id=\"file_attach_type\" value=\"page\" />";
	        	
	        	$form .= "<ul class=\"collection with-header\" id=\"sortableFiles-box\">";

		  		if(count($files))
		  		{
		  			$runed = 1;
		  			foreach ($files as $f) {
		  				$explode = explode("/", $f['file_path']);
		  				$filename = end($explode);

		  				$form .= "<li class=\"collection-item level-0 popupfile0\" data-item=\"".$f['idx']."\" data-cid=\"".$f['cid']."\" data-file=\"".$f['file_path']."\">
								<div>
									".$filename."
									
									<a href=\"javascript:void(0)\" onclick=\"removeAttachedFile('level-0','".$f['idx']."', true)\" class=\"secondary-content tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"წაშლა\"><i class=\"material-icons\">delete</i></a>
									<a href=\"javascript:void(0)\" class=\"secondary-content tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"კომენტარი (5)\"><i class=\"material-icons\">comment</i></a>
									<a href=\"javascript:void(0)\" onclick=\"openFileManagerForSubFiles('subfilex".$f['idx']."','".$f['idx']."')\" class=\"secondary-content tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"დამატება\"><i class=\"material-icons\">note_add</i></a>
								</div>";
				       $form .= "</li>";
				       $database = new Database("file", array(
				       		"method"=>"selectFilesByPageId", 
				       		"cid"=>$f['idx'], 
				       		"page_id"=>$f['page_id'], 
				       		"type"=>$f['type'], 
				       		"lang"=>$f['lang']  
				       ));
				       
				       $subfiles = $database->getter(); 
				       if(count($subfiles))
				       { 
					       	if($runed==1){
									$form .= "<ul id=\"subfilex-".$f['idx']."\" class=\"collection with-header sortableFiles-box2\" data-cid=\"".$f['idx']."\" style=\"margin:10px;\">";
							}
				       		foreach ($subfiles as $sf) {
				       			$ex = explode("/", $sf['file_path']); 
				       			$fn = end($ex);
								$form .= "<li class=\"collection-item level-2\" data-item=\"".$sf['idx']."\" data-cid=\"".$sf['cid']."\" data-path=\"".$sf['idx']."\">";
								$form .= "<div>";
								$form .= $fn;
								$form .= "<a href=\"javascript:void(0)\" onclick=\"removeAttachedFile('level-2','".$sf['idx']."', false)\"  class=\"secondary-content tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"წაშლა\"><i class=\"material-icons\">delete</i></a>";
								$form .= "<a href=\"\" class=\"secondary-content tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"კომენტარი (5)\"><i class=\"material-icons\">comment</i></a>";
								$form .= "</div>";
								$form .= "</li>";
				       		}
				       		if($runed==1){
								$form .= "</ul>";
							}
				       }
						
		  			}
		  		}

		  		$form .= "</ul>";
	  		}

	  		
			$form .= functions\makeForm::close();


			$this->out = array(
				"Error" => array(
					"Code"=>0, 
					"Text"=>"ოპერაცია შესრულდა წარმატებით !",
					"Details"=>""
				),
				"form" => $form,
				"attr" => "formPageEdit('".$idx."', '".$lang."')"
			);

		}

		

		return $this->out;
	}
}