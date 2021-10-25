<?php
ob_start();
$title='Магазин';
$prodClass=1;
// заголовок для списка новостей по категории
if(isset($categoryOne)) $title.=' - '.$categoryOne['nameCategory'];
// if(isset($text)) $title.='<h4> Результат поиска по запросу '.$text.'</h4>';
?>
<div id="content" class="site-content">
			<div id="primary" class="content-area column full">
				<main id="main" class="site-main" role="main">
				<p class="woocommerce-result-count">
					 Showing 1–8 of <?php $countNews; ?> results
				</p>
				<form class="woocommerce-ordering" method="get">
					<select name="orderby" class="orderby">
						<option value="menu_order" selected="selected">Default sorting</option>
						<option value="popularity">Sort by popularity</option>
						<option value="rating">Sort by average rating</option>
						<option value="date">Sort by newness</option>
						<option value="price">Sort by price: low to high</option>
						<option value="price-desc">Sort by price: high to low</option>
					</select>
				</form>
	<aside>
		<h3>Категории</h3>
		<ul>
			<li><a href="shop">Все категории(<?php echo $countNews; ?>)</a></li>
		<?php
		foreach ($categories as $category) {
			echo '<li>';
			echo '<a href="category?id='.$category['idCategory'].'">';
			echo $category['nameCategory'].'('.$category['countNews'].')</a>';
			echo '</li>';
		}
		?>
		</ul>
	</aside>
		<ul class="products">
			<?php
			if(count($rows)>0){//если есть новости в категории
				foreach ($rows as $row) {
					if ($prodClass==1 || $prodClass==5) {
						echo '<li class="first product">';
					}
					elseif ($prodClass==4 || $prodClass==8) {
						echo '<li class="last product">';
					}else{
						echo '<li class="product">';
					}
					echo '<a href="shop-single.html">';
					echo '<span class="onsale">Sale!</span>';
					echo '<img src="images/'.$row['imageProduct'].'"alt="'.$row['nameProduct'].'"class="prodListImg">';
					echo '<p>'.$row['nameProduct'].'</p>';
					echo '<span class="price"><span class="amount">'.$row['price'].' eu</span></span>';
					echo '</a><a href="#" class="button">Add to cart</a>';
					echo '</li>';
					$prodClass++;
				}
			}else{//если нет новостей в категории
				echo '<h3>В этой категории нет товаров</h3>';

				}
			?>
				<nav class="woocommerce-pagination">
				<ul class="page-numbers">
					<li><span class="page-numbers current">1</span></li>
					<li><a class="page-numbers" href="#">2</a></li>
					<li><a class="next page-numbers" href="#">→</a></li>
				</ul>
				</nav>
							</main>
				<!-- #main -->
			</div>
			<!-- #primary -->
		</div>
		<!-- #content -->

<?php $content = ob_get_clean();
	include "view/templates/layout.php";