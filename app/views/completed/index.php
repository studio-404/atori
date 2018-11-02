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
						<li><a href="/<?=$_SESSION["LANG"]?>/on-going" class="animsition-link"><?=$menu_data->data(132, "title")?></a></li>
						<li class="active"><a href="/<?=$_SESSION["LANG"]?>/completed-projects" class="animsition-link"><?=$menu_data->data(137, "title")?></a></li>
					</div>
					<div class="ComplatedDiv" id="ComplatedDiv">
						<div class="row">
							<?php foreach($data["completed"] as $completed): ?>
							<a href="/<?=$_SESSION["LANG"]?>/view/?id=<?=$completed["idx"]?>" class="animsition-link col-sm-3" data-wow-duration="0.5s" data-wow-delay="0.1s">
								<div class="Item">
									<div class="Image"><img src="<?=$completed["photo"]?>" /></div>
									<div class="Title"><?=$completed["title"]?></div>
								</div>
							</a>
							<?php endforeach; ?>
						</div>
					</div>
				</div> 
			</div> 
		</div>
	</section>


<?=$data['footer']?>