<?php 
class Fail extends Controller
{
	public function __construct()
	{
		
	}

	public function index($name = '')
	{
		// $db_slug = new Database("modules", array(
		// 	"method"=>"selectModuleByType", 
		// 	"type"=>"slug15409136131540913716"
		// ));

		// // foreach ($db_slug->getter() as $v) {
		// // 	echo $v["idx"]."<br>";
		// // 	echo $v["photo"]."<br>";
		// // 	echo $v["type"]."<br>";
		// // 	echo $v["lang"]."<br>";
		// // 	echo "<br>---<br>";
		// // }

		// /*
		
		// */

		// foreach ($db_slug->getter() as $v) {
		// 	$db_maxid = new Database("modules", array(
		// 		"method"=>"selectMaxId"
		// 	));
		// 	$maxid = $db_maxid->getter();

		// 	$db_add = new Database("modules", array(
		// 		"method"=>"add",
		// 		"date"=>$v["date"],
		// 		"moduleSlug"=>"slug15409184531540918464",
		// 		"title"=>$v["title"],
		// 		"pageText"=>$v["description"],
		// 		"link"=>$v["link"],
		// 		"additional1"=>$v["additional1"],
		// 		"additional2"=>$v["additional2"],
		// 		"additional3"=>$v["additional3"],
		// 		"additional4"=>$v["additional4"],
		// 		"additional5"=>$v["additional5"],
		// 		"classname"=>$v["classname"],
		// 		"map_coordinates"=>$v["map_coordinates"]
		// 	));

		// 	$db_photo = new Database("photos", array(
		// 		"method"=>"add", 
		// 		"parent"=>$maxid,
		// 		"path"=>$v["photo"],
		// 		"type"=>"slug15409184531540918464",
		// 		"lang"=>"ge"
		// 	));

		// 	$db_photo2 = new Database("photos", array(
		// 		"method"=>"add", 
		// 		"parent"=>$maxid,
		// 		"path"=>$v["photo"],
		// 		"type"=>"slug15409184531540918464",
		// 		"lang"=>"en"
		// 	));
		// 	echo $v["title"]." inserted!<br />";
		// }
	}
}