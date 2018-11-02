<?php
class loadapartment
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

		$idx = functions\request::index("POST","idx");
		$floor = functions\request::index("POST","floor");
		$lang = functions\request::index("POST","lang");

		if($idx=="" || $lang=="")
		{
			$this->out = array(
				"Error" => array(
					"Code"=>1, 
					"Text"=>"ყველა ველი სავალდებულოა !",
					"Details"=>"!"
				)
			);
		}else{
			$apartment = new Database('modules', array(
					'method'=>'selectById', 
					'idx'=>$idx, 
					'lang'=>$lang
			));
			$fetch = $apartment->getter();

			$file = new Database("file", array(
				"method"=>"selectFilesByPageId",
				"page_id"=>$idx,
				"lang"=>$lang,
				"type"=>"module"
			));
			$fetchFile = $file->getter();


			$apartment_out = "<div class=\"col-sm-6 zoomIn animated\">";
			$apartment_out .= "<div class=\"ApartInfoBox\">";
			$apartment_out .= "<div class=\"NumbersDiv\">";
			$apartment_out .= sprintf(
				"<div class=\"FloorNumber\">%d</div>",
				$floor
			);
			$apartment_out .= sprintf(
				"<div class=\"ApartNumber\">%s</div>",
				$fetch["title"]
			);
			$apartment_out .= "</div>";
			$apartment_out .= "<div class=\"Info\">";
			$apartment_out .= sprintf(
				"<div class=\"Size\">%s %s</div>",
				$fetch["classname"],
				$l->translate("sqm", $lang)
			);
			$apartment_out .= strip_tags($fetch["description"], "<p><a><ul><li><strong><b>");
			$apartment_out .= "<div class=\"Total\">";
			$apartment_out .= sprintf(
				"<div class=\"Name\">%s</div>",
				$l->translate("totalprice", $lang)
			);
			$apartment_out .= sprintf(
				"<div class=\"Price\">%s</div>",
				$fetch["additional1"]
			);

			$kv = preg_match("/\d+/", $fetch["classname"], $match);
			$kvprice = (int)str_replace(array(","," ","."),"",$fetch["additional1"]) / (int)$match[0];
			$apartment_out .= sprintf(
				"<div class=\"PerSqm\">%s <span>%d</span></div>",
				$l->translate("pricepersqr", $lang),
				$kvprice
			);
			// $apartment_out .= "<div class=\"CalculatorButton\"></div>";
			$apartment_out .= "</div>";
			$apartment_out .= "</div>";
			$apartment_out .= "<div class=\"DownloadFile\">";
			$apartment_out .= sprintf(
				"<button onclick=\"openwin('%s')\">%s</button>", 
				Config::PUBLIC_FOLDER.$fetchFile[0]["file_path"],
				$l->translate("downloadpdffloorplan", $lang)
			);
			$apartment_out .= "</div>";
			$apartment_out .= "</div>";
			$apartment_out .= "</div>";
			$apartment_out .= "<div class=\"col-sm-6 zoomIn animated\">";
			$apartment_out .= "<div class=\"ApartImageDiv\">";
			$apartment_out .= sprintf(
				"<img src=\"%s\" />",
				$fetch["photo"]
			);
			$apartment_out .= "</div>";
			$apartment_out .= "</div>";
			
			
			
			$this->out = array(
				"Error" => array(
					"Code"=>0, 
					"Text"=>"",
					"Details"=>""
				),
				"Success"=>array(
					"Code"=>1, 
					"Text"=>"ოპერაცია შესრულდა წარმატებით !",
					"apartment_out"=>$apartment_out,
					"Details"=>""
				)
			);
			
		}

		return $this->out;
	}
}