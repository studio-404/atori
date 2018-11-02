<?php 
require_once("app/functions/l.php"); 
require_once("app/functions/strip_output.php"); 
require_once("app/functions/string.php"); 
require_once 'app/functions/request.php';
require_once 'app/functions/pagination.php';
require_once 'app/functions/menu_data.php';

$l = new functions\l(); 
$pagination = new functions\pagination(); 
$menu_data = new functions\menu_data(); 
echo $data['headerModule']; 
?>

<section class="MainSection" id="MainSection">
		<div class="SectionHeight">
			<div class="container-fluid AtoriContainer"> 
				<div class="ProjectListDiv">
					<div class="TabButtons">
						<li class="active"><a href="/<?=$_SESSION["LANG"]?>/on-going" class="animsition-link"><?=$menu_data->data(132, "title")?></a></li>
						<li><a href="/<?=$_SESSION["LANG"]?>/completed-projects" class="animsition-link"><?=$menu_data->data(137, "title")?></a></li>
					</div>
					<div class="OnGoingDiv">
						<div class="row">
							<?php 
							foreach($data["ongoing"] as $item): ?>
							<a href="/<?=$_SESSION["LANG"]?>/<?=$item["slug"]?>" class="col-sm-6 animsition-link animated fadeInLeft">
								<div class="Item">
									<div class="Image"><img src="<?=Config::WEBSITE_.$item["photo"]?>"/></div>
									<div class="Title"><?=$item["title"]?></div>
									<div class="Text"><?=$item["aditional1"]?><br><?=$item["aditional2"]?></div>
								</div>
							</a>
							<?php endforeach;
							?>
						</div>
					</div>
				</div> 
			</div> 
		</div>
	</section>

	 
	 
	<footer class="Footer">
		<div class="container-fluid AtoriContainer">
			<div class="CopyRight">
				&copy; 2018 Atori Development & Enviroment
			</div>
		</div>
	</footer> 

<?=$data['footer']?>