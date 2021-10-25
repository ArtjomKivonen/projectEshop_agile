<?php

class controllerCart{

	public static function actionAdd($id){
		//добавляем товар в корзину
		modelCart::addProduct($id);
		//возвращаем пользователя на стр с кот он пришел
		return;
	}
}








?>