<?php

/**
 * 
 */
class modelCart
{
	
	public static function addProduct($id){
		$productsInCart = array();
		// если в сессии есть товары - добавляем их в массив
		if (isset($_SESSION['products'])) {
			$productsInCart = $_SESSION['products'];
		}
		if (isset($productsInCart[$id])) {
			$productsInCart[$id] ++;
		}else{
			$productsInCart[$id] =1;
		}
		$_SESSION['products'] = $productsInCart;//записываем массив с товарами в сессию

	}

    public static function deleteProduct($id){

        $productsInCart = $_SESSION['products'];
        $productsInCart[$id] --;

        if ($productsInCart[$id]==0) {
            unset($productsInCart[$id]);
        }
        $_SESSION['products'] = $productsInCart;//записываем массив с товарами в сессию

    }

    public static function clearCart(){

        if(isset($_SESSION['products'])){
            unset($_SESSION['products']);
        }

    }

	public static function countItems() {
		if (isset($_SESSION['products'])) {
			$count=0;
			foreach ($_SESSION['products'] as $id => $quantity) {
				$count += $quantity;
			}
			echo $count;
			// code...
		}else{
			echo 0;// Если товаров нет возвращаем 0
		}
	}
    public static function getTotalPrice ($products)
    {
        $total = 0;
        if(isset($_SESSION['products'])) {
            $productsInCart = $_SESSION['products'];
            foreach ($products as $row) {
                $total+= $row['price'] * $productsInCart[$row['idProduct']];
            }


        }
        return $total;
    }
}



?>