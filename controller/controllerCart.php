<?php

class controllerCart{

	public static function actionAdd($id){
		//добавляем товар в корзину
		modelCart::addProduct($id);
		//возвращаем пользователя на стр с кот он пришел
		return;
	}
    public static function actionDelete($id){

        modelCart::deleteProduct($id);
    return;
    }
    public static function actionCartClear(){

        modelCart::clearCart();
    return;
    }


    public static function cartView(){
        if(isset($_SESSION['products'])){

            $productsInCart= $_SESSION['products'];

            $productsIds=array_keys($productsInCart);

            $products = Model::getProductsByIds($productsIds);

            $totalPrice = modelCart::getTotalPrice($products);
        }
        include_once ("view/viewCart.php");
    }
}








?>