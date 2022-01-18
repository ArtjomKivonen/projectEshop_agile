<?php
ob_start();
$title='';
?>

		<div id="content" class="site-content">
			<div id="primary" class="content-area column full">
				<main id="main" class="site-main">
				<article id="post-39" class="post-39 page type-page status-publish hentry">
				<header class="entry-header">
				<h1 class="entry-title">Контакты</h1>
				</header>
				<!-- .entry-header -->
				<div class="entry-content">
						
					<!-- BEGIN MAP -->
					<p><img src= "images/maps.png">
					<div style='overflow:hidden;height:50px;width:100%;'>

					</div>
					
					<!-- END MAP -->
						
					<div class="wpcmsdev-columns">
						<div class="column column-width-one-half">

			<?php
				if(!isset($message)){

			?>

				<h4>Свяжитесь с нами</h4>
					<form class="wpcf7" method="post" action="contactSend" id="myForm">
								<div class="form">
									<p><input class="form-control" type="text" id="name" name="name" placeholder="Имя *" autofocus required></p>
									<p><input class="form-control" type="text" id="email" name="email" placeholder="Ваш email *" required></p>
									<p><textarea class="form-control" id="mess" name="message" placeholder="Сообщение *" required></textarea></p>
									<input class="button" type="submit" name="send" id="submit" value="Отправить">
								</div>
					</form>
			<!-- contact form
				message-->

				<?php
				}
				elseif (isset($message) && $message[0]==true){
					echo '
							<div class="done">								
								Ваше сообщение отправленно. Спасибо!
							</div>
						</div>';
					echo $message[1];

					echo '<hr><p><a href="contact">Написать сообщение</a></p>';
					}
				else{
						echo '<h3>Сообщение об ошибке</h3>';
						echo '<p><b>Пожалуйста исправьте следующие ошибки</b><br>'.$message[1].'</p>';
						echo '<hr><p><a href="contact">Написать сообщение </a> </p>';
					}
				?>
				<!-- end message-->



						<div class="column column-width-one-half">
							<h4>Телефон: (888) 252 389 3571</h4>
							<p>
								Если  вас есть какие-либо отзывы или вопросы о наших услугах в целом, отправьте нам сообщение, заполнив форму запроса. Так же можно связаться с нами по телефону.
							</p>
							<p>
								Пн – Вс: 9:00 - 20:00 <br>

							</p>
						</div>



		</div>
				</div>
				<!-- .entry-content -->
				</article>
				</main>
				<!-- #main -->
			</div>
			<!-- #primary -->
		</div>
		<!-- #content -->


	<?php
		$content = ob_get_clean();
		include "view/templates/layout.php";
	?>


