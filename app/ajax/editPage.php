<?php 
class editPage
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
		require_once 'app/functions/request.php';

		$this->out = array(
			"Error" => array(
				"Code"=>1, 
				"Text"=>"მოხდა შეცდომა !",
				"Details"=>"!"
			)
		);

		$idx = functions\request::index("POST","idx");
		$lang = functions\request::index("POST","lang");
		$chooseNavType = functions\request::index("POST","chooseNavType");
		$chooseNavType = (empty($chooseNavType)) ? 0 : $chooseNavType;
		$choosePageType = functions\request::index("POST","choosePageType");
		$choosePageType = (empty($choosePageType) || $choosePageType=="") ? "text" : $choosePageType;
		$title = functions\request::index("POST","title");
		$slug = str_replace(" ","-",functions\request::index("POST","slug"));
		$cssClass = functions\request::index("POST","cssClass");
		$attachModule = functions\request::index("POST","attachModule");
		$redirect = functions\request::index("POST","redirect");
		$pageDescription = functions\request::index("POST","pageDescription");
		$pageText = functions\request::index("POST","pageText");
		$terms = functions\request::index("POST","terms");
		$map = functions\request::index("POST","map");
		$aditional1 = functions\request::index("POST","aditional1");
		$aditional2 = functions\request::index("POST","aditional2");
		$aditional3 = functions\request::index("POST","aditional3");
		$aditional4 = functions\request::index("POST","aditional4");
		$aditional5 = functions\request::index("POST","aditional5");
		$aditional6 = functions\request::index("POST","aditional6");
		$serialPhotos = unserialize(functions\request::index("POST","serialPhotos"));
		$serialFiles = unserialize(functions\request::index("POST","serialFiles"));

		if($idx == "" || $lang=="" || $title=="" || $slug=="")
		{
			$this->out = array(
				"Error" => array(
					"Code"=>1, 
					"Text"=>"ყველა ველი სავალდებულოა !",
					"Details"=>"!"
				)
			);
		}else if(in_array($slug, explode("|", Config::RESTRICTED_SLUGS))){
			$this->out = array(
				"Error" => array(
					"Code"=>1, 
					"Text"=>"ბმულში გამოყენებულია აკრძალილი სიმბოლო, გთხოვთ შეცვალეთ ".$slug." !",
					"Details"=>"!"
				)
			);
		}else{
			$Database = new Database('page', array(
					'method'=>'edit', 
					'idx'=>$idx, 
					'lang'=>$lang, 
					'title'=>$title, 
					'slug'=>$slug, 
					'cssClass'=>$cssClass, 
					'attachModule'=>$attachModule, 
					'redirect'=>$redirect, 
					'pageDescription'=>$pageDescription, 
					'pageText'=>$pageText, 
					'terms'=>$terms, 
					'map'=>$map, 
					'aditional1'=>$aditional1, 
					'aditional2'=>$aditional2, 
					'aditional3'=>$aditional3, 
					'aditional4'=>$aditional4, 
					'aditional5'=>$aditional5, 
					'aditional6'=>$aditional6, 
					'serialPhotos'=>$serialPhotos, 
					'serialFiles'=>$serialFiles 
			));
			$output = $Database->getter();
			
			if($output){
				$this->out = array(
					"Error" => array(
						"Code"=>0, 
						"Text"=>"",
						"Details"=>""
					),
					"Success"=>array(
						"Code"=>1, 
						"Text"=>"ოპერაცია შესრულდა წარმატებით !",
						"Details"=>""
					)
				);
			}else{
				$this->out = array(
					"Error" => array(
						"Code"=>1, 
						"Text"=>"ოპერაციის შესრულებისას დაფიქსირდა შეცდომა !",
						"Details"=>""
					)
				);
			}
		}

		return $this->out;
	}
}