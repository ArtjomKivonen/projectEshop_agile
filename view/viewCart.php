<?php
ob_start();
$title="Корзина";
?>
<?php
if (isset($productsInCart)) {

?>

<section id="cart_items">
    <h1>Shopping Cart</h1>

    <div class="shopping-cart">

        <div class="column-labels">
            <label class="product-image">Image</label>
            <label class="product-details">Product</label>
            <label class="product-price">Price</label>
            <label class="product-quantity">Quantity</label>
            <label class="product-removal">Remove</label>
            <label class="product-line-price">Total</label>
        </div>

<?php
foreach ($products as $product){
?>
        <div class="product">
            <div class="cartview-image">
                <img class="imageincart"src="images/<?php echo $product['imageProduct']; ?>">
            </div>
            <div class="product-details">
                <div class="product-title"><?php echo $product['nameProduct']; ?></div>
                <p class="product-description"><?php echo $product['descriptionProduct']; ?></p>
            </div>
            <div class="product-price"><?php echo $product['price']; ?></div>
            <div class="product-quantity">
                <p><?php echo $productsInCart[$product['idProduct']];?></p>
            </div>
            <div class="product-removal">
                <button class="remove-product">
                    <a href="cartDelete?id=<?php echo $product['idProduct']; ?>">Удалить из корзины</a>
                </button>
            </div>
            <div class="product-line-price">25.98</div>
        </div>
    <?php
}
 //foreach
    ?>
<!--        <div class="product">-->
<!--            <div class="product-image">-->
<!--                <img src="https://s.cdpn.io/3/large-NutroNaturalChoiceAdultLambMealandRiceDryDogFood.png">-->
<!--            </div>-->
<!--            <div class="product-details">-->
<!--                <div class="product-title">Nutro™ Adult Lamb and Rice Dog Food</div>-->
<!--                <p class="product-description">Who doesn't like lamb and rice? We've all hit the halal cart at 3am while quasi-blackout after a night of binge drinking in Manhattan. Now it's your dog's turn!</p>-->
<!--            </div>-->
<!--            <div class="product-price">45.99</div>-->
<!--            <div class="product-quantity">-->
<!--                <input type="number" value="1" min="1">-->
<!--            </div>-->
<!--            <div class="product-removal">-->
<!--                <button class="remove-product">-->
<!--                    Remove-->
<!--                </button>-->
<!--            </div>-->
<!--            <div class="product-line-price">45.99</div>-->
<!--        </div>-->

<!--        <div class="totals">-->
<!--            <div class="totals-item">-->
<!--                <label>Subtotal</label>-->
<!--                <div class="totals-value" id="cart-subtotal">71.97</div>-->
<!--            </div>-->
<!--            <div class="totals-item">-->
<!--                <label>Tax (5%)</label>-->
<!--                <div class="totals-value" id="cart-tax">3.60</div>-->
<!--            </div>-->
<!--            <div class="totals-item">-->
<!--                <label>Shipping</label>-->
<!--                <div class="totals-value" id="cart-shipping">15.00</div>-->
<!--            </div>-->
            <div class="totals-item totals-item-total">
                <label>Grand Total</label>
                <div class="totals-value" id="cart-total"><?php echo $totalPrice; ?></div>
            </div>
        </div>
    <button class="checkout"><a href="cartClear">Очистить корзину</a></button>
    <button class="checkout"><a href="cartChecout">К оплате</a></button>
        <?php
}
//         else
//             echo "<h3>Корзина пуста</h3>";
         ?>
    </div>


</section>

<?php
    $content = ob_get_clean();
    include "view/templates/layout.php";