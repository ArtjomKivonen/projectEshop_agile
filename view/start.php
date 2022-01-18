<?php
ob_start();
$title = 'Последние добавленные товары';
?>
<div class="container" style="min-height: 400px;">
    <div class="grid portfoliogrid">
	<?php
		foreach ($rows as $row) {
	?>
            <div class="entry-thumbnail">
				<img src="<?php print('images/'.$row['imageProduct']);?>" width="100px" height="100px" class="thumbnail">
				<h3><?php print($row['nameProduct']);?></h3>
				<h5><i>Дата: </i><?php print($row['date']); ?></h5>
                <p><i>Тип: </i><?php print($row['nameType']);?></p>
				<p><i>Категория: </i><?php print($row['nameCategory']);?></p>
                <p><i>Материал: </i><?php print($row['nameFabric']);?></p>
				<?php
					echo '<div class="detail-link"><a href="detail?id='.$row['idProduct'].'">Подробнее</a></div>';
                    echo '</a><a href="cartAdd?id='.$row['idProduct'].'" class="button">Добавить в корзину</a>';
				?>




			</div>
	<?php
		}

	?>
    </div>

</div>


<?php
	$content = ob_get_clean();
	include "view/templates/layout.php";