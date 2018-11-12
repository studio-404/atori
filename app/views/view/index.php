<?php 
require_once("app/functions/l.php"); 
require_once("app/functions/strip_output.php"); 
require_once("app/functions/string.php"); 
require_once 'app/functions/request.php';
require_once 'app/functions/selectedDestinations.php';

$l = new functions\l(); 
echo $data['headerModule']; 

$backimage = "";
if(isset($data["photos"][1]["path"])){
	$backimage = Config::WEBSITE_.$data["photos"][1]["path"];
}else if(isset($data["productGetter"]["photo"])){
	$backimage = Config::WEBSITE_.$data["productGetter"]["photo"];
}
?>

<section class="ProjectInside" id="MainSection">
		<div class="SectionHeight">
			<div class="container-fluid AtoriContainer_2">
				<div class="ApartamentDiv White">
					<img src="<?=Config::WEBSITE.$_SESSION["LANG"]."/image/loadimage?f=".$backimage."&w=1400&h=600"?>"/>
				</div>
				<div class="ApartamentInfo">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-4 animated fadeInLeft">
								<div class="InfoBox">
									<div class="Head">
										<?=$data["productGetter"]["title"]?>
										<div class="CloseIcon" data-toggle="collapse" data-target="#CloseAtor"></div>
									</div>
									<div class="Content collapse in" id="CloseAtor">
										<div class="Text">
											<?=strip_tags($data["productGetter"]["text"], "<p><strong><ul><li><a><b><br>")?>
										</div>
										<div class="Features">
											<div class="Title"><?=$l->translate("features")?></div>
											<div class="row">
												<div class="col-sm-4">
													<div class="Item Stories">
														<div class="Icon"></div>
														<div class="Number"><?=$data["productGetter"]["aditional1"]?></div>
														<div class="Name"><?=$l->translate("stories")?></div>
													</div>
												</div>
												<!-- <div class="col-sm-4">
													<div class="Item Recreation">
														<div class="Icon"></div>
														<div class="Number"><?=$data["productGetter"]["aditional2"]?></div>	
														<div class="Name"><?=$l->translate("recreation")?></div>			
													</div>
												</div> -->
												<div class="col-sm-4">
													<div class="Item Parking">
														<div class="Icon"></div>
														<div class="Number"><?=$data["productGetter"]["aditional3"]?></div>
														<div class="Name"><?=$l->translate("parking")?></div>
													</div>
												</div>
											</div>	
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-8 FullHeight animated fadeInRight">
								<div class="ComplatedDivInfo">
									<img src="<?=Config::WEBSITE.$_SESSION["LANG"]."/image/loadimage?f=".Config::WEBSITE_.$data["productGetter"]["photo"]."&w=400&h=580"?>"/>
								</div>							
							</div>
						</div>	
					</div>
					 
				</div>
			</div> 
		</div>
	</section>

<?=$data['footer']?>