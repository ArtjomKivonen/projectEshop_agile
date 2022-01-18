<?php
ob_start();
$title='';
$prodClass=1;
// заголовок для списка новостей по категории
if(isset($categoryOne)) $title.=' - '.$categoryOne['nameCategory'];
if(isset($typeOne)) $title.=' - '.$typeOne['nameType'];
if(isset($fabricOne)) $title.=' - '.$fabricOne['nameFabric'];
// if(isset($text)) $title.='<h4> Результат поиска по запросу '.$text.'</h4>';

?>
<div id="content" class="site-content">
			<div id="primary" class="content-area column full">
				<main id="main" class="site-main" role="main">
<!--				<p class="woocommerce-result-count">-->
<!--					 Showing 1–--><?php //$countNews; ?><!-- of results-->
<!--				</p>-->
<!--				<form class="woocommerce-ordering" method="get">-->
<!--					<select name="orderby" class="orderby">-->
<!--						<option value="menu_order" selected="selected">Default sorting</option>-->
<!--						<option value="popularity">Sort by popularity</option>-->
<!--						<option value="rating">Sort by average rating</option>-->
<!--						<option value="date">Sort by newness</option>-->
<!--						<option value="price">Sort by price: low to high</option>-->
<!--						<option value="price-desc">Sort by price: high to low</option>-->
<!--					</select>-->
<!--				</form>-->
<div class="categoryMenu">
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
        <h3>Тип</h3>

        <ul>
            <?php
            foreach ($types as $type) {
                echo '<li>';
                echo '<a href="type?id='.$type['idType'].'">';
                echo $type['nameType'].'('.$type['countNews'].')</a>';
                echo '</li>';
            }
            ?>


        </ul>
        <h3>Материал</h3>
        <ul>
            <?php
            foreach ($fabrics as $fabric) {
                echo '<li>';
                echo '<a href="fabric?id='.$fabric['idFabric'].'">';
                echo $fabric['nameFabric'].'('.$fabric['countNews'].')</a>';
                echo '</li>';
            }
            ?>

        </ul>
	</aside>
	</div>
		<ul class="products">
			<?php
			if(count($rows)>0){//если есть новости в категории
				foreach ($rows as $row) {
//					if ($prodClass==1 || $prodClass==5) {
//						echo '<li class="first product">';
//					}
//					elseif ($prodClass==4 || $prodClass==8) {
//						echo '<li class="last product">';
//					}else{
					echo '<li class="product">';
//					}
                    echo '<div class="detail-link"><a href="detail?id='.$row['idProduct'].'">Подробнее</a></div>';
					echo '<span class="onsale">Скидка!</span>';
					echo '<img src="images/'.$row['imageProduct'].'"alt="'.$row['nameProduct'].'"class="prodListImg">';
					echo '<p>'.$row['nameProduct'].'</p>';
					echo '<span class="price"><span class="amount">'.$row['price'].' eu</span></span>';
					echo '</a><a href="cartAdd?id='.$row['idProduct'].'" class="button">Добавить в корзину</a>';
					echo '</li>';
//					$prodClass++;
				}
			}else{//если нет новостей в категории
				echo '<h3>В этой категории нет товаров</h3>';

				}
			?>

							</main>
				<!-- #main -->
			</div>
			<!-- #primary -->
		</div>
		<!-- #content -->

<?php $content = ob_get_clean();
	include "view/templates/layout.php";