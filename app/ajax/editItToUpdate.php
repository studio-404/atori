<?php
class editItToUpdate
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
		$aditional1 = functions\request::index("POST","aditional1");
		$aditional2 = functions\request::index("POST","aditional2");
		$aditional3 = functions\request::index("POST","aditional3");
		$aditional4 = functions\request::index("POST","aditional4");
		$aditional5 = functions\request::index("POST","aditional5");
		$aditional6 = functions\request::index("POST","aditional6");
		

		if($lang=="")
		{
			$this->out = array(
				"Error" => array(
					"Code"=>1, 
					"Text"=>"ყველა ველი სავალდებულოა !",
					"Details"=>"!"
				)
			);
		}else{
			if(
				$aditional1=="NULL" && 
				$aditional2=="NULL" && 
				$aditional3=="NULL" && 
				$aditional4=="NULL" && 
				$aditional5=="NULL" && 
				$aditional6=="NULL" 
			){
				$json = NULL;
			}else{
				$array["aditional1"] = $aditional1;
				$array["aditional2"] = $aditional2;
				$array["aditional3"] = $aditional3;
				$array["aditional4"] = $aditional4;
				$array["aditional5"] = $aditional5;
				$array["aditional6"] = $aditional6;
				$json = json_encode($array);
			}
			

			$Database = new Database('page', array(
					'method'=>'changeAditionalCols', 
					'lang'=>$lang, 
					'aditionaljson'=>$json, 
					'idx'=>$idx
			));
			
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
			
		}

		return $this->out;
	}
}