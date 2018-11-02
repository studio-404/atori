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
						"<area class=\"masterTooltip\" shape=\"poly\" coords=\"%s\" Size=\"%s %s\" onclick=\"loadApartment(%d,%d)\" />",
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
			$floor_out .= sprintf(
				"<div class=\"FloorNumber\">%s</div>",
				$match[0]
			);
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
			$floor_out .= sprintf(
				"<img src=\"%s\" class=\"map\" usemap=\"#PlaMap\"/>",
				$fetch["photo"]
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