<?php 
class View extends Controller
{
	public $productGetter; 

	public function __construct()
	{
		require_once("app/functions/request.php");
		require_once 'app/functions/redirect.php';

		if(!functions\request::index("GET", "id") || !is_numeric(functions\request::index("GET", "id"))){
			functions\redirect::url(Config::WEBSITE.$_SESSION["LANG"]."/".Config::MAIN_CLASS);
		}

		$db_products = new Database("page", array(
			"method"=>"selectById", 
			"idx"=>(int)(functions\request::index("GET", "id")),
			"lang"=>$_SESSION["LANG"]
		));
		$this->productGetter = $db_products->getter();

		if(!$this->productGetter){
			functions\redirect::url(Config::WEBSITE.$_SESSION["LANG"]."/".Config::MAIN_CLASS);
		}
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
		$header->product = $this->productGetter; 

		/* LANGUAGES */
		$languages = $this->model('_lang'); 
		$languages->langs = $db_langs->getter();

		/* NAVIGATION */
		$navigation = $this->model('_navigation');
		$navigation->data = $db_navigation->getter();

		/* header top */
		$headertop = $this->model('_top');
		$headertop->data["navigationModule"] = $navigation->index();

		/*footer */
		$footer = $this->model('_footer');

		$photos = new Database("photos", array(
			"method"=>"selectByParent",
			"idx"=>$this->productGetter["idx"],
			"lang"=>$_SESSION["LANG"],
			"type"=>"text"
		));

		/* view */
		$this->view('view/index', [
			"header"=>array(
				"website"=>Config::WEBSITE,
				"public"=>Config::PUBLIC_FOLDER
			),
			"headerModule"=>$header->index(), 
			"headertop"=>$headertop->index(), 
			"pageData"=>$db_pagedata->getter(), 
			"productGetter"=>$this->productGetter, 
			"photos"=>$photos->getter(), 
			"footer"=>$footer->index() 
		]);
	}
}