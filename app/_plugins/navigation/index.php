<?php
require_once 'app/functions/url.php';
$url = new functions\url();
$getUrl = explode("/", $url->getUrl());
// echo $getUrl[4];

$database = new Database("page", array(
	"method"=>"selectById",
	"idx"=>(int)$getUrl[4],
	"lang"=>$_SESSION["LANG"]
));


$aditionaljson = $database->getter();
$aditionaljson = $aditionaljson["aditionaljson"];
// echo $aditionaljson;
$aditionaljson = json_decode($aditionaljson, true);
?>

<div class="row" style="display: block;">
	
	
	<div class="col s12">
		<div style="float: right; margin: 0 0 10px 0; width: 250px;">
			<select class="language-chooser" id="language-chooser" onchange="changeLanguage('<?=$_SESSION["LANG"]?>')">
				<option value="" disabled selected>აირჩიეთ ენა</option>
				<option value="ge" <?=($_SESSION["LANG"]=="ge") ? "selected='selected'" : ""?>>ქართული</option>
				<option value="en" <?=($_SESSION["LANG"]=="en") ? "selected='selected'" : ""?>>ინგლისური</option>
			</select>
		</div>
		<div class="materialize" style="clear:both; float: left; width: 100%;">
			<form action="?" method="post" enctype="application/x-www-form-urlencoded">
				<div class="input-field">
					<input placeholder="დამატებითი ველი 1" id="aditional1" type="text" value="<?=(isset($aditionaljson['aditional1'])) ? $aditionaljson['aditional1'] : 'NULL'?>" />
					<label for="aditional1">დამატებითი ველი 1</label>
				</div>

				<div class="input-field">
					<input placeholder="დამატებითი ველი 2" id="aditional2" type="text" value="<?=(isset($aditionaljson['aditional2'])) ? $aditionaljson['aditional2'] : 'NULL'?>" />
					<label for="aditional2">დამატებითი ველი 2</label>
				</div>

				<div class="input-field">
					<input placeholder="დამატებითი ველი 3" id="aditional3" type="text" value="<?=(isset($aditionaljson['aditional3'])) ? $aditionaljson['aditional3'] : 'NULL'?>" />
					<label for="aditional3">დამატებითი ველი 3</label>
				</div>

				<div class="input-field">
					<input placeholder="დამატებითი ველი 4" id="aditional4" type="text" value="<?=(isset($aditionaljson['aditional4'])) ? $aditionaljson['aditional4'] : 'NULL'?>" />
					<label for="aditional4">დამატებითი ველი 4</label>
				</div>

				<div class="input-field">
					<input placeholder="დამატებითი ველი 5" id="aditional5" type="text" value="<?=(isset($aditionaljson['aditional5'])) ? $aditionaljson['aditional5'] : 'NULL'?>" />
					<label for="aditional5">დამატებითი ველი 5</label>
				</div>

				<div class="input-field">
					<input placeholder="დამატებითი ველი 6" id="aditional6" type="text" value="<?=(isset($aditionaljson['aditional6'])) ? $aditionaljson['aditional6'] : 'NULL'?>" />
					<label for="aditional6">დამატებითი ველი 6</label>
				</div>

				<a class="waves-effect waves-light btn EditItToUpdate" onclick="editItToUpdate('<?=$getUrl[4]?>','<?=$_SESSION["LANG"]?>')">რედაქტირება</a>
			</form>
		</div>
		<div style="clear: both;"></div>
		<a class="waves-effect waves-light btn" style="margin: 30px 0;" onclick="location.href = '/<?=$_SESSION["LANG"]?>/dashboard/index'">უკან</a>
		
	</div>


</div>