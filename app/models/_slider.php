<?php 
class _slider
{
	public $data;

	public function index()
	{
		require_once("app/functions/strip_output.php"); 
		require_once("app/functions/l.php");
		$l = new functions\l();

		$out = array();
		$out["list"] = "";
		$out["printr"] = print_r($this->data, true);
		$out["count"] = 0;
		
		$out["count"] = count($this->data);

		if($out["count"])
		{
			foreach($this->data as $value):
				$photos = new Database("photos",array(
					"method"=>"selectByParent", 
					"idx"=>(int)$value['idx'],  
					"lang"=>strip_output::index($value['lang']),  
					"type"=>strip_output::index($value['type'])
				));
				if($photos->getter()){
					$pic = $photos->getter();
					$image = strip_output::index($pic[0]['path']);
				}else{
					$image = "/public/filemanager/noimage.png";
				}

				$out["list"] .= "<div class=\"slide\">\n";
				$out["list"] .= "<div class=\"slide__img\">\n";
				$out["list"] .= sprintf(
					"<img src=\"%s\" alt=\"%s\" data-lazy=\"\" class=\"full-image animated\" data-animation-in=\"zoomInImage\" />\n",
					$image, 
					$image
				);
				$out["list"] .= "</div>\n";
				$out["list"] .= "<div class=\"SlideContent\">\n";
				$out["list"] .= "<div class=\"SlideContentHeadings\">\n";
				$out["list"] .= "<div class=\"SlideArrow animated\" data-animation-in=\"fadeInLeft\" data-delay-in=\"0.2\"></div>\n";
				$out["list"] .= sprintf(
					"<h2 class=\"animated\" data-animation-in=\"fadeInUp\" data-delay-in=\"0.7\">%s</h2>\n",
					strip_tags($value['title'])
				);
				$out["list"] .= "<p class=\"animated\" data-animation-in=\"fadeInUp\" data-delay-in=\"0.7\">\n";
				$out["list"] .= strip_tags($value['description'])."\n";
				$out["list"] .= "</p>\n";
				$out["list"] .= sprintf(
					"<a href=\"%s\" class=\"LearnMore animated\" data-animation-in=\"fadeInUp\" data-delay-in=\"1\">\n",
					strip_tags($value['url'])
				);
				$out["list"] .= sprintf("<span>%s</span>\n", $l->translate("more"));
				$out["list"] .= "</a>\n";
				$out["list"] .= "</div>\n";
				$out["list"] .= "</div>\n";
				$out["list"] .= "</div>\n";
			endforeach;
		}
		
		return $out;
	}
}