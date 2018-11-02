<?php
class addPage
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

		$lang = functions\request::index("POST","lang");
		$input_cid = functions\request::index("POST","input_cid");
		$chooseNavType = functions\request::index("POST","chooseNavType");
		$chooseNavType = (empty($chooseNavType)) ? 0 : $chooseNavType;
		$choosePageType = functions\request::index("POST","choosePageType");
		$choosePageType = (empty($choosePageType) || $choosePageType=="") ? "text" : $choosePageType;
		$title = functions\request::index("POST","title");
		$slug = str_replace(
			array('\'','~','@','$','^','*','(',')','{','}','|',';','<','>','\\','..','+'),
			"-", 
			functions\request::index("POST","slug")
		);
		$cssClass = functions\request::index("POST","cssClass");
		$attachModule = $slug.time();
		$redirect = functions\request::index("POST","redirect");
		$pageDescription = functions\request::index("POST","pageDescription");
		$pageText = functions\request::index("POST","pageText");
		$terms = functions\request::index("POST","terms");
		$map = functions\request::index("POST","map_coordinates");
		$serialPhotos = unserialize(functions\request::index("POST","serialPhotos"));
		$serialFiles = unserialize(functions\request::index("POST","serialFiles"));


		$additional1 = functions\request::index("POST","additional1");
		$additional2 = functions\request::index("POST","additional2");
		$additional3 = functions\request::index("POST","additional3");
		$additional4 = functions\request::index("POST","additional4");
		$additional5 = functions\request::index("POST","additional5");
		$additional6 = functions\request::index("POST","additional6");

		if($title=="" || $slug=="")
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
					"Text"=>"ბმულში გამოყენებულია აკრძალილი სიტყვა, გთხოვთ შეცვალეთ ".$slug." !",
					"Details"=>"!"
				)
			);
		}else{
			$input_cid = (empty($input_cid) || $input_cid==0) ? 0 : $input_cid;
			$Database = new Database('page', array(
					'method'=>'add', 
					'lang'=>$lang, 
					'input_cid'=>$input_cid, 
					'chooseNavType'=>$chooseNavType, 
					'choosePageType'=>$choosePageType, 
					'title'=>$title, 
					'slug'=>$slug, 
					'cssclass'=>$cssClass, 
					'usefull_type'=>$attachModule, 
					'redirect'=>$redirect, 
					'pageDescription'=>$pageDescription, 
					'pageText'=>$pageText, 
					'terms'=>$terms, 
					'map'=>$map, 
					'serialPhotos'=>$serialPhotos, 
					'serialFiles'=>$serialFiles, 
					'additional1'=>$additional1, 
					'additional2'=>$additional2, 
					'additional3'=>$additional3, 
					'additional4'=>$additional4, 
					'additional5'=>$additional5, 
					'additional6'=>$additional6 
			));
			$output = $Database->getter();

			$Database = new Database('modules', array(
				'method'=>'addParentFromPageAdd', 
				'type'=>$attachModule, 
				'title'=>$title
			));
			
			//

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