<?php 
class _header
{
	public $public;
	public $lang;
	public $pagedata;
	public $imageSrc;
	public $product;

	public function index(){ 

		$getter = $this->pagedata->getter(); 

		if(isset($getter['title'])){
			$title = strip_tags($getter['title']);
			$description = strip_tags($getter['description']);
		}else if(isset($getter[0]['title'])){
			$title = strip_tags($getter[0]['title']); 
			$description = strip_tags($getter[0]['description']);
		}else{
			$title = "";
			$description = "";
		}

		if(isset($this->product)){
			$title = strip_tags($this->product['title']);
			$description = strip_tags(@$this->product['short_description']);
		}

		$out = "<!DOCTYPE html>\n";
		$out .= "<html>\n";
		$out .= "<head>\n";

		$out .= sprintf(
			"<base url=\"%s\" />\n",
			Config::WEBSITE
		);

		$out .= "<meta charset=\"utf-8\">\n";

		$out .= sprintf("<title>%s - Atori</title>\n", strip_tags($title));
		// $out .= "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
		$out .= "<meta name=\"viewport\" content=\"width=400, user-scalable=no\" />\n";

		$actual_link = "http://".$_SERVER["HTTP_HOST"].htmlentities($_SERVER["REQUEST_URI"]);
		
		$out .= sprintf(
			"<meta property=\"fb:app_id\" content=\"%s\" />\n",
			Config::FB_APP
		);
		$out .= "<meta property=\"og:title\" content=\"".strip_tags($title)."\" />\n";
		$out .= "<meta property=\"og:type\" content=\"website\" />\n";
		$out .= "<meta property=\"og:url\" content=\"".$actual_link."\"/>\n";
		$keywords = str_replace(" ", ",", strip_tags($description));
		$out .= sprintf(
			"<meta name=\"keywords\" content=\"%s\" />\n", 
			htmlentities($keywords)
		);
		
		if(isset($this->imageSrc)){
			$image = $this->imageSrc;
		}else{
			$image = $this->public."img/share2.jpg";
		}
		$out .= sprintf(
			"<meta property=\"og:image\" content=\"%s?v=%s\" />\n", 
			$image,
			Config::WEBSITE_VERSION
		);
		$out .= sprintf(
			"<link rel=\"image_src\" type=\"image/jpeg\" href=\"%s?v=%s\" />\n", 
			$image,
			Config::WEBSITE_VERSION
		);


		$out .= "<meta property=\"og:image:width\" content=\"600\" />\n";
		$out .= "<meta property=\"og:image:height\" content=\"315\" />\n";
		$out .= sprintf(
			"<meta property=\"og:site_name\" content=\"%s\" />\n",
			Config::NAME
		);
		$out .= "<meta property=\"og:description\" content=\"".htmlentities($description)."\"/>\n";


		$out .= sprintf(
			"<link rel=\"icon\" type=\"image/ico\" href=\"%simg/favicon.png\" />\n", 
			$this->public
		);

		$out .= "<script src=\"https://code.jquery.com/jquery-2.2.1.min.js\"></script>\n";
		
		$out .= sprintf(
			"<script src=\"%sjs/web/bootstrap.min.js?v=%s\"></script>\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/wow.js?v=%s\"></script>\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/slick.min.js?v=%s\"></script>\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/slick-animation.min.js?v=%s\"></script>\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/jquery.maphilight.js?v=%s\"></script>\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/bootstrap-select.js?v=%s\"></script>\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/imageMapResizer.min.js?v=%s\"></script>\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/jquery.slimscroll.js?v=%s\"></script>\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/animsition/js/animsition.js?v=%s\"></script>\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/jquery.nicescroll.js?v=%s\"></script>\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/scripts.js?v=%s\"></script>\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);
		
		$out .= sprintf("<script src=\"https://maps.googleapis.com/maps/api/js?key=%s&language=ka\" type=\"text/javascript\"></script>\n", Config::GOOGLE_API_KEY);

		$out .= sprintf(
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"%scss/web/bootstrap.css?v=%s\" />\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);
		
		$out .= sprintf(
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"%scss/web/font-awesome.css?v=%s\" />\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"%scss/web/fonts.css?v=%s\" />\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"%scss/web/animate.css?v=%s\" />\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"%scss/web/bootstrap-select.css?v=%s\" />\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"%scss/web/slick.css?v=%s\" />\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"%scss/web/style.css?v=%s\" />\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"%scss/web/custom_res.css?v=%s\" />\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"%scss/web/animsition/css/animsition.css?v=%s\" />\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"%scss/web/animsition/css/base.css?v=%s\" />\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		$out .= sprintf(
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"%scss/web/animsition/css/loading.css?v=%s\" />\n", 
			$this->public,
			Config::WEBSITE_VERSION
		);

		if(isset($_SESSION['LANG']) && $_SESSION['LANG']=="ge"){
			  $out .= sprintf(
				"<link rel=\"stylesheet\" type=\"text/css\" href=\"%scss/web/geo.css?v=%s\" />\n", 
				$this->public,
				Config::WEBSITE_VERSION
			);
		}

		$out .= "</head>\n";
		
		$s = (isset($_SESSION["URL"][1])) ? $_SESSION["URL"][1] : Config::MAIN_CLASS;
		$bodyClass = "HomePage";
		if ($s!="" && $s!="home") {
			$bodyClass = "";
		}

		$out .= "<body class=\"".$bodyClass."\">\n";

		$out .= "<div class=\"MainDiv animsition\">\n";
		
		$out .= "<header class=\"Header\">\n";
		$out .= "<div class=\"col-sm-6\">\n";
		$out .= sprintf(
			"<a href=\"/%s/home\" class=\"logo animsition-link\">atori</a>\n",
			$_SESSION['LANG']
		);
		$out .= "</div>\n";
		$out .= "<div class=\"col-sm-6 padding_0\">\n";
		$out .= "<div class=\"Hamburger\"></div>\n";
		$out .= "<div class=\"Language pull-right\">\n";
		$out .= sprintf(
			"<span>%s</span>\n",
			$_SESSION["LANG"]
		);
		$out .= "<div class=\"LangList\">\n";
		$out .= sprintf(
			"<input type=\"hidden\" id=\"lang\" value=\"%s\" />\n",
			$_SESSION["LANG"]
		);
		if($actual_link==Config::WEBSITE){
			$out .= sprintf(
				"<a href=\"%s\">en</a>\n",
				$actual_link."en/home"
			);
		}else if($_SESSION["LANG"]=="ge"){
			$out .= sprintf(
				"<a href=\"%s\">en</a>\n",
				str_replace("/ge/", "/en/", $actual_link)
			);
		}else{
			$out .= sprintf(
				"<a href=\"%s\">ge</a>\n",
				str_replace("/en/", "/ge/", $actual_link)
			);
		}
		$out .= "</div>\n";
		$out .= "</div>\n";

		$db_navigation = new Database("page", array(
			"method"=>"select", 
			"cid"=>0, 
			"nav_type"=>0,
			"lang"=>$_SESSION['LANG'],
			"status"=>0 
		));

		$out .= "<div class=\"HeaderMenu pull-right\"> \n";
		foreach ($db_navigation->getter() as $value):
			$active = (isset($_SESSION["URL"][1]) && $_SESSION["URL"][1]==$value['slug']) ? "active" : "";
			$active = (isset($_SESSION["URL"][1]) && $_SESSION["URL"][1]=="on-going" && $value["slug"]=="projects") ? "active" : $active;

			
			$active = (isset($_SESSION["URL"][1]) && $_SESSION["URL"][1]=="abashidze55-under" && $value["slug"]=="projects") ? "active" : $active;

			$active = (isset($_SESSION["URL"][1]) && $_SESSION["URL"][1]=="completed-projects" && $value["slug"]=="projects") ? "active" : $active;

			$active = (isset($_SESSION["URL"][1]) && $_SESSION["URL"][1]=="view" && $value["slug"]=="projects") ? "active" : $active;

			$active = (isset($_SESSION["URL"][1]) && $_SESSION["URL"][1]=="atori-tower" && $value["slug"]=="projects") ? "active" : $active;

			$active = (isset($_SESSION["URL"][1]) && $_SESSION["URL"][1]=="politovskaia40" && $value["slug"]=="projects") ? "active" : $active;


			if(isset($value['redirect']) && $value['redirect']!=""){
				$out .= sprintf(
					"<li class=\"%s\"><a href=\"%s\" class=\"animsition-link\">%s</a></li>\n",
					$active,
					strip_output::index($value['redirect']),
					strip_output::index($value['title'])
				);
			}else{
				$out .= sprintf(
					"<li class=\"%s\"><a href=\"%s%s/%s\" class=\"animsition-link\">%s</a></li>\n",
					$active,
					Config::WEBSITE,
					strip_output::index($_SESSION['LANG']),
					strip_output::index($value['slug']),
					strip_output::index($value['title'])
				);	
			}
		endforeach;

		
		$out .= "<div class=\"Language MobileLanguage\">\n";
		if($actual_link==Config::WEBSITE){
			$out .= sprintf(
				"<a href=\"%s\" class=\"active\">ge</a>\n",
				$actual_link."ge/home"
			);
			$out .= sprintf(
				"<a href=\"%s\">en</a>\n",
				$actual_link."en/home"
			);
		}else if($_SESSION["LANG"]=="ge"){
			$out .= sprintf(
				"<a href=\"%s\" class=\"active\">ge</a>\n",
				$actual_link
			);
			$out .= sprintf(
				"<a href=\"%s\">en</a>\n",
				str_replace("/ge/", "/en/", $actual_link)
			);
		}else{
			$out .= sprintf(
				"<a href=\"%s\">ge</a>\n",
				str_replace("/en/", "/ge/", $actual_link)
			);
			$out .= sprintf(
				"<a href=\"%s\" class=\"active\">en</a>\n",
				$actual_link
			);
		}


		$out .= "</div>\n";



		$out .= "</div>\n";

		$out .= "</div>\n";
		$out .= "</header>\n";
		
		
		
		return $out;
	}
}