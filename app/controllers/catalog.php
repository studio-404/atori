<?php 
class Catalog extends Controller
{
	public function __construct()
	{

	}

	public function index($name = "")
	{
		/* DATABASE */
		$db_langs = new Database("language", array(
			"method"=>"select"
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


		/* LANGUAGES */
		$languages = $this->model('_lang'); 
		$languages->langs = $db_langs->getter();

		/* NAVIGATION */
		$navigation = $this->model('_navigation');
		$navigation->data = $db_navigation->getter();

		$db_contactdetails = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"contactdata"
		)); /* # */

		$db_socialnetworks = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"socialnetworks",
			"order"=>"`date`",
			"by"=>"DESC"
		));


		/* header top */
		$headertop = $this->model('_top');
		$headertop->data["languagesModule"] = $languages->index();
		$headertop->data["navigationModule"] = $navigation->index();
		$headertop->data["contactdetails"] = $db_contactdetails->getter();
		$headertop->data["socialnetworks"] = $db_socialnetworks->getter();

		/*footer */
		$footer = $this->model('_footer');

		$pageDatax = $db_pagedata->getter();
		$photos = new Database("photos", array(
			"method"=>"selectByParent",
			"idx"=>$pageDatax["idx"],
			"lang"=>$_SESSION["LANG"],
			"type"=>"catalog"
		));

		$selectFloors = new Database("page", array(
			"method"=>"selecteByCid",
			"cid"=>$pageDatax["idx"],
			"lang"=>$_SESSION["LANG"]
		));


		/* view */
		$this->view('catalog/index', [
			"header"=>array(
				"website"=>Config::WEBSITE,
				"public"=>Config::PUBLIC_FOLDER
			),
			"headerModule"=>$header->index(), 
			"headertop"=>$headertop->index(), 
			"pageData"=>$pageDatax, 
			"floors"=>$selectFloors->getter(),
			"photos"=>$photos->getter(), 
			"footer"=>$footer->index() 
		]);
	}
}