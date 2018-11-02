<?php
class Home extends Controller
{
	public function __construct()
	{
		
	}

	public function index($name = '')
	{ 
		/* DATABASE */
		$db_langs = new Database("language", array(
			"method"=>"select"
		)); /* # */

		$db_slider = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"slider",
			"order"=>"`date`",
			"by"=>"DESC",
			"from"=>0, 
			"num"=>15
		));

		$db_navigation = new Database("page", array(
			"method"=>"select", 
			"cid"=>0, 
			"nav_type"=>0,
			"lang"=>$_SESSION['LANG'],
			"status"=>0 
		));


		$s = (isset($_SESSION["URL"][1])) ? $_SESSION["URL"][1] : Config::MAIN_CLASS;
		$db_pagedata = new Database("page", array(
			"method"=>"selecteBySlug", 
			"slug"=>$s,
			"lang"=>$_SESSION['LANG'], 
			"all"=>true
		));
		

		/* HEDARE */
		$header = $this->model('_header');
		$header->public = Config::PUBLIC_FOLDER; 
		$header->lang = $_SESSION["LANG"]; 
		$header->pagedata = $db_pagedata; 

		/* NAVIGATION */
		$navigation = $this->model('_navigation');
		$navigation->data = $db_navigation->getter();


		/* slidr */
		$slider = $this->model('_slider');
		$slider->data = $db_slider->getter(); 

		/* header top */
		$headertop = $this->model('_top');
		$headertop->data["navigationModule"] = $navigation->index();

		/*footer */
		$footer = $this->model('_footer');


		/* view */
		$this->view('home/index', [
			"header"=>array(
				"website"=>Config::WEBSITE,
				"public"=>Config::PUBLIC_FOLDER
			),
			"headerModule"=>$header->index(), 
			"headertop"=>$headertop->index(), 
			"pageData"=>$db_pagedata->getter(), 
			"slider"=>$slider->index(), 
			"footer"=>$footer->index()
		]);
	}

}