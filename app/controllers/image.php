<?php 
use Intervention\Image\ImageManager;

class Image extends Controller
{
	public function __construct()
	{
		if(!isset($_GET["f"])){ die(); }
		if(!isset($_GET["w"])){ die(); }
		if(!isset($_GET["h"])){ die(); }
	} 

	public function loadimage()
	{
		require_once 'app/functions/request.php';
		
		$f = functions\request::index("GET","f");
		$w = functions\request::index("GET","w");
		$h = functions\request::index("GET","h");
		$q = functions\request::index("GET","q");
		$grey = (functions\request::index("GET","grey")) ? functions\request::index("GET","grey") : false;

		$filename = explode(Config::WEBSITE, $f);

		if(!$filename){ exit(); }

		$ext = explode(".", $filename[1]);
		$end = strtolower(end($ext));

		$w = (!is_numeric($w) || $w==0) ? null : $w;
		$h = (!is_numeric($h) || $h==0) ? null : $h;
		$q = (!is_numeric($q) || $q==0) ? 100 : $q;


		if(isset($filename[1]) && file_exists($filename[1]) && ($end=="jpg" || $end=="png" || $end=="gif" || $end=="jpeg")){
			$fileSize = filesize($filename[1]);
			
			$resizeDir = "public/_temporaty/";
			$resizeFileName = $fileSize. "-" . $w . "-" . $h . "-". $grey . "-" . str_replace(array("/", " "), "-", $filename[1]);
			$resizePath = $resizeDir . $resizeFileName;
			
			if(!file_exists($resizePath)){		
				$manager = new ImageManager(array('driver' => 'gd'));	//imagick	
				if($grey){
					$manager->make($filename[1])->fit($w, $h)->greyscale()->encode('jpg', $q)->save($resizePath);
				}else{
					$manager->make($filename[1])->fit($w, $h)->encode('jpg', $q)->save($resizePath);
				}
			}

			header('Content-Type: image/jpeg');
			echo file_get_contents($resizePath);

		}else{
			die();
		}
	}

}