<?php
class register
{
	public $out; 

	public function __construct()
	{
		require_once 'app/core/Config.php';
	}
	
	public function index(){
		require_once 'app/core/Config.php';
		require_once 'app/functions/send.php';
		require_once 'app/functions/request.php';
		require_once 'app/functions/string.php';
		require_once 'app/functions/l.php';
		$l = new functions\l();

		$this->out = array(
			"Error" => array(
				"Code"=>1, 
				"Text"=>"მოხდა შეცდომა !",
				"Details"=>"!"
			)
		);

		$lang = strip_tags(functions\request::index("POST","lang"));
		$serialize = functions\request::index("POST","serialize");
		
		parse_str($serialize, $values);

		if(
			empty($values["email"]) OR 
			empty($values["password"]) OR 
			empty($values["firstname"]) OR 
			empty($values["lastname"]) OR 
			empty($values["dob"]) OR 
			empty($values["gender"]) OR 
			empty($values["country"]) OR 
			empty($values["city"]) OR 
			empty($values["phone"]) OR 
			empty($values["postcode"]) 
		){
			$error = 1;
			$Success = 0;
  			$errorText = $l->translate("errorallfieldsrequire", $lang);
		}else if (!filter_var($values["email"], FILTER_VALIDATE_EMAIL)) {
			$error = 1;
			$Success = 0;
  			$errorText = $l->translate("erroremail", $lang);
		}else if(preg_match('/\s/', $values["password"]) || strlen(trim($values["password"])) < 8){
			$error = 1;
			$Success = 0;
  			$errorText = $l->translate("errorpasswordwrong", $lang);
		}else if($values["password"] != $values["comfirmpassword"]){
			$error = 1;
			$Success = 0;
  			$errorText = $l->translate("errornomatchpasswords", $lang);
		}else{
			$user_exists = new Database("user", array(
				"method"=>"check_user_exists", 
				"username"=>$values["email"]
			));

			if($user_exists->getter()){
				$error = 1;
				$Success = 0;
  				$errorText = $l->translate("erroruserexists", $lang);
			}else{
				$dob = explode("/", $values["dob"]); // dd/mm/yyyy
				$newDOB = sprintf("%s-%s-%s", $dob[2], $dob[1], $dob[0]); //yyyy-mm--dd
				$email_random = functions\string::random(10); // random

				$user_insert = new Database("user", array(
					"method"=>"insert", 
					"username"=>$values["email"], 
					"password"=>$values["password"], 
					"firstname"=>$values["firstname"], 
					"lastname"=>$values["lastname"], 
					"dob"=>$newDOB, 
					"gender"=>$values["gender"], 
					"country"=>$values["country"], 
					"city"=>$values["city"], 
					"phone"=>$values["phone"], 
					"email_random"=>$email_random, 
					"postcode"=>$values["postcode"] 
				));
				if($user_insert->getter()){
					$error = 0;
					$Success = 1;
  					
  					$errorText = $l->translate("errornull", $lang);
  					$_SESSION[Config::SESSION_PREFIX."web_username"] = $values["email"];

  					$body = "<strong>S'il vous plaît confirmer votre adresse e-mail afin que nous sachions que c'est vraiment vous: </strong> <br /><br />";
  					$body .= sprintf(
  						"<a href=\"%sfr/home/?confirm=%s\" style=\"color: red; text-decoration: underline\">Vérifier mon adresse e-mail</a>",
  						Config::WEBSITE,
  						$email_random 
  					);

  					$send = new functions\send();
  					$args = array(
  						"sendTo"=>$values["email"],
  						"subject"=>$l->translate("confirmemail", $lang),
  						"body"=>$body
  					);
  					$send->index($args);
  				}else{
  					$error = 1;
					$Success = 0;
  					$errorText = $l->translate("error", $lang);
  				}
			}
		}
		

		$this->out = array(
			"Error" => array(
				"Code"=>$error, 
				"Text"=>$errorText,
				"Details"=>""
			),
			"Success"=>array(
				"Code"=>$Success, 
				"Text"=>$errorText,
				"GoToUrl"=>Config::WEBSITE.htmlentities($lang)."/myaccount/?view=profile",
				"Details"=>""
			)
		);

		return $this->out;
	}
}