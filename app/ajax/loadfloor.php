<?php
class loadfloor
{
	public $out; 
	
	public function __construct()
	{

	}
	
	public function index(){
		require_once 'app/core/Config.php';
		require_once 'app/functions/request.php';
		require_once("app/functions/detectMobile.php"); 
		require_once("app/functions/l.php"); 
		$l = new functions\l(); 

		$this->out = array(
			"Error" => array(
				"Code"=>1, 
				"Text"=>"მოხდა შეცდომა !",
				"Details"=>"!"
			)
		);

		$floorid = functions\request::index("POST","floorid");
		$lang = functions\request::index("POST","lang");

		if($floorid=="" || $lang=="")
		{
			$this->out = array(
				"Error" => array(
					"Code"=>1, 
					"Text"=>"ყველა ველი სავალდებულოა !",
					"Details"=>"!"
				)
			);
		}else{
			$floor = new Database('page', array(
					'method'=>'selectById', 
					'idx'=>$floorid, 
					'lang'=>$lang
			));
			$fetch = $floor->getter();

			$rooms = new Database("modules", array(
				"method"=>"selectModuleByType", 
				"type"=>$fetch["usefull_type"],
				"lang"=>$lang
			));

			$flat_floors = new Database("page", array(
				"method"=>"selecteByCid", 
				"cid"=>$fetch["cid"],
				"lang"=>$lang
			));
			$flat_floors_fetch = $flat_floors->getter();

			$rooms_fetch = $rooms->getter();
			$floorNum = preg_match("/\d+/", $fetch["title"], $match);
			$mapping = "";
			$sold = 0;
			$avaliable = 0;
			$soldlist = "";
			foreach ($rooms_fetch as $v) {
				if($v["additional2"]==1){
					$avaliable++;
				}else{
					$sold++;
				}

				$soldornot = ($v["additional2"]==2) ? " active" : "";
				$soldlist .= "<div class=\"apert_{$v["idx"]}{$soldornot}\">".$l->translate("sold", $lang)."</div>";

				if($v["additional2"]==2){
					$mapping .= sprintf(
						"<area shape=\"poly\" coords=\"%s\" Size=\"%s\" %s />",
						$v["additional3"],
						"<span>".$l->translate("sold", $lang)."</span>",
						"data-maphilight='{\"stroke\":false,\"fillColor\":\"fcff00\",\"fillOpacity\":0.4,\"alwaysOn\":true}'"
					);
				}else{
					$mapping .= sprintf(
						"<area class=\"masterTooltip flooorGegma_%s\" shape=\"poly\" coords=\"%s\" Size=\"%s %s\" onclick=\"loadApartment(%d,%d)\" />",
						$v["idx"],
						$v["additional3"],
						htmlentities("<span>".$v["classname"]."</span>"),
						$l->translate("sqm", $lang),
						$v["idx"],
						$match[0]
					);
				}
			}
			
			$floor_out = "<div class=\"col-sm-6 zoomIn animated\">";
			$floor_out .= "<div class=\"ApartInfoBox ApartInfoBox222 ApartInfoBox333\">";
			$floor_out .= "<div class=\"NumbersDiv\">";
			
			$floor_out .= "<div class=\"FloorNumber\">";
			$floor_out .= "<span id=\"floorNum__\">".$match[0]."</span>";
			
			$floor_out .= "<div class=\"FloorChangeSelect\">";				
			$floor_out .= "<select class=\"selectpicker floorSelector\">";			
			$i=1;
			foreach($flat_floors_fetch as $v):
			$act = ($i==$match[0]) ? 'selected="selected"' : '';
			$floor_out .= sprintf(
				"<option value=\"%s\" %s>%s</option>",
				$v['idx'],
				$act,
				$i
			);
			$i++;
			endforeach;
			$floor_out .= "<select>";
			$floor_out .= "</div>";
			$floor_out .= "</div>";


			$floor_out .= sprintf(
				"<div class=\"ApartNumber\">%d %s</div>",
				$avaliable,
				$l->translate("propertyleft", $lang)
			);
			$floor_out .= sprintf(
				"<div class=\"Sold\">%d %s</div>",
				$sold,
				$l->translate("sold", $lang)
			);
			$floor_out .= "</div>";
			$floor_out .= "</div>";
			$floor_out .= "</div>";

			$floor_out .= "<div class=\"col-sm-6 zoomIn animated\">";
			$floor_out .= "<div class=\"FloorImageDiv\">";

			$image = $fetch["photo"];
			$floor_out .= sprintf(
				"<img src=\"%s\" class=\"map\" usemap=\"#PlaMap\"/>",
				$image
			);
			$floor_out .= "<div class=\"appartment-soldlist\">";
			$floor_out .= $soldlist;
			$floor_out .= "</div>";
			$floor_out .= "<map name=\"PlaMap\">";
			$floor_out .= $mapping;
			$floor_out .= "</map>";
			$floor_out .= "</div>";
			$floor_out .= "</div>";
			
			
			
			$this->out = array(
				"Error" => array(
					"Code"=>0, 
					"Text"=>"",
					"Details"=>""
				),
				"Success"=>array(
					"Code"=>1, 
					"Text"=>"ოპერაცია შესრულდა წარმატებით !",
					"floor_out"=>$floor_out,
					"Details"=>""
				)
			);
			
		}

		return $this->out;
	}
}