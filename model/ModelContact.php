<?php

class ModelContact{

	public static function getContactMessage() {
			$errorString="";
			$send=array(false, 'error send');
		if(isset($_POST['send'])){
			$myemail="you@domain.com";
			$yourname=$_POST['name'];
				if(trim($yourname)=='') //если поле name осталось пустое
			{
				$errorString.='Введите ваше имя<br/>';
			}
			
			$email=filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
			if(!$email){ //если поле email заполнено неправильно
				$errorString.='Неправельно введен email<br/>';
			}
			$comments=$_POST['message'];

			//-------------------------проверка заполненность полей на корректность
			if(trim($comments)=="")
			{//если поле message осталось пустое
				$errorString.='Текст сообщения не введен<br/>';
			}
			//------------------------report send mail создание отчета и отправка сообщения на емайл
			$subject='Сообщение с сайта Магазин вязаной одежды';
			if($errorString==""){
				$message="
				<i>Контактная форма</i><hr>
				
				Ваше имя: $yourname<br>
				Ваш email: $email<br>
				Ваше сообщение: <br> $comments
				<hr>
				Сообщение отправлено на почту фирмы и копия на ваш e-mail: $email<br>
				<hr>
				";
				mail($myemail,$subject,$message);//отправка на email фирмы
				$send=array(true, $message);
			}else{
				$send=array(false, $errorString);
			}

		}
		return $send;
	}
// END MODELCONTACT class
}

?>