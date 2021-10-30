/*---------------------------------------------------------------------------------------------
  Skip Link Focus Fix
----------------------------------------------------------------------------------------------*/
( function() {
	var is_webkit = navigator.userAgent.toLowerCase().indexOf( 'webkit' ) > -1,
	    is_opera  = navigator.userAgent.toLowerCase().indexOf( 'opera' )  > -1,
	    is_ie     = navigator.userAgent.toLowerCase().indexOf( 'msie' )   > -1;

	if ( ( is_webkit || is_opera || is_ie ) && document.getElementById && window.addEventListener ) {
		window.addEventListener( 'hashchange', function() {
			var element = document.getElementById( location.hash.substring( 1 ) );

			if ( element ) {
				if ( ! /^(?:a|select|input|button|textarea)$/i.test( element.tagName ) )
					element.tabIndex = -1;

				element.focus();
			}
		}, false );
	}
})();


/*---------------------------------------------------------------------------------------------
  Scroll to top
----------------------------------------------------------------------------------------------*/
jQuery(document).ready(function($){
    $(window).scroll(function(){
        if ($(this).scrollTop() < 400) {
            $('.smoothup') .fadeOut();
        } else {
            $('.smoothup') .fadeIn();
        }
    });
    $('.smoothup').on('click', function(){
        $('html, body').animate({scrollTop:0}, 'slow');
        return false;
        });
});


// shopping cart -------------------------------------------------------------------------------







/* Set rates + misc */
var taxRate = 0.05;
var shippingRate = 15.00;
var fadeTime = 300;


/* Assign actions */
$('.product-quantity input').change( function() {
	updateQuantity(this);
});

$('.product-removal button').click( function() {
	removeItem(this);
});


/* Recalculate cart */
function recalculateCart()
{
	var subtotal = 0;

	/* Sum up row totals */
	$('.product').each(function () {
		subtotal += parseFloat($(this).children('.product-line-price').text());
	});

	/* Calculate totals */
	var tax = subtotal * taxRate;
	var shipping = (subtotal > 0 ? shippingRate : 0);
	var total = subtotal + tax + shipping;

	/* Update totals display */
	$('.totals-value').fadeOut(fadeTime, function() {
		$('#cart-subtotal').html(subtotal.toFixed(2));
		$('#cart-tax').html(tax.toFixed(2));
		$('#cart-shipping').html(shipping.toFixed(2));
		$('#cart-total').html(total.toFixed(2));
		if(total == 0){
			$('.checkout').fadeOut(fadeTime);
		}else{
			$('.checkout').fadeIn(fadeTime);
		}
		$('.totals-value').fadeIn(fadeTime);
	});
}


/* Update quantity */
function updateQuantity(quantityInput)
{
	/* Calculate line price */
	var productRow = $(quantityInput).parent().parent();
	var price = parseFloat(productRow.children('.product-price').text());
	var quantity = $(quantityInput).val();
	var linePrice = price * quantity;

	/* Update line price display and recalc cart totals */
	productRow.children('.product-line-price').each(function () {
		$(this).fadeOut(fadeTime, function() {
			$(this).text(linePrice.toFixed(2));
			recalculateCart();
			$(this).fadeIn(fadeTime);
		});
	});
}


/* Remove item from cart */
function removeItem(removeButton)
{
	/* Remove row from DOM and recalc cart total */
	var productRow = $(removeButton).parent().parent();
	productRow.slideUp(fadeTime, function() {
		productRow.remove();
		recalculateCart();
	});
}