<?php 
class _footer
{
	public $data;

	public function index()
	{
		//contactdetails
		require_once("app/functions/l.php");
		require_once("app/functions/strip_output.php");  
		require_once("app/functions/string.php");
		require_once("app/functions/request.php"); 

		$l = new functions\l(); 	


		$out = "\n</div>\n"; // main site end
		$out .= "<div class=\"animsition-loading\"></div>\n";


		$out .= "</body>\n";
		$out .= "</html>";



		return $out;
	}
}