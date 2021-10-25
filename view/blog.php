<?php
ob_start();
$title='Блог';
?>


<div id="content" class="site-content">
	<div id="primary" class="content-area column two-thirds">
		<main id="main" class="site-main" role="main">
			<div class="grid bloggrid">


				<?php
				foreach ($rows as $row) {
					echo '<article>';
					echo '<header class="entry-header">';
					echo '<h1 class="entry-title"><a href="blogdetail?id='.$row['idArticle'].'" rel="bookmark">'.$row['nameArticle'].'</a></h1>';
					echo '<div class="entry-meta">';
					echo '<span class="posted-on"><time class="entry-date published">'.$row['date'].'</time></span>';
					echo '</div>';
					echo '<div class="entry-thumbnail">';
					echo '<img src="images/'.$row['imageArticle'].'" alt="">';
					echo '</div>';
					echo '</header>';
					echo '<div class="entry-summary">';
					echo '<p>'.$row['textShort'].'<a class="more-link" href="blogdetail?id='.$row['idArticle'].'">Читать далее</a></p>';
					echo '</div>';
					echo '<footer class="entry-footer">';
					echo '</footer>';
					echo '</article>';
				}

				?>
				</div>
				<div class="clearfix">
			</div>
			<nav class="pagination"></nav>
		</main>
				<!--/main -->
	</div>
			<!-- #primary -->
			<div id="secondary" class="column third">
				<div id="sidebar-1" class="widget-area" role="complementary">
				
					<aside id="text-5" class="widget widget_text">
					<h4 class="widget-title">Обо мне</h4>
					<div class="textwidget">
						<p>
							<img src="http://www.themepush.com/demo-hypnosa/wp-content/uploads/sites/9/2015/09/avatar5.png" class="alignleft" style="width:80px;border-radius:50%;margin-bottom:0;"> Давайте знакомиться! Я Елена, люблю красивые, оригинальные,неповторимые вещи.Разделяю желание женщини мужчин одеваться интересно и элегантно. Поэтому создаю стильные модели женской и мужской одежды.Если  вы здесь, чтобы порадовать себя и близких необычной и рукотворной вещью; чтобы попробовать новый вид рукоделия; чтобы окунуться в мир вязания , то добро пожаловать в мой магазин описаний.
						</p>
					</div>
					</aside>

					<aside id="recent-posts-2" class="widget widget_recent_entries">
					<h4 class="widget-title">Последние статьи</h4>
					<ul>
						<?php
						foreach ($row as $rows) {
							echo "<li>";
							echo '<a href="blog?id='.$row['idArticle'].'">'.$row['nameArticle'].'</a>';
							echo "<li>";
						}
						?>

					</ul>
					</aside>
					
					<aside id="text-6" class="widget widget_text">
					<h4 class="widget-title">Like us on Facebook</h4>
					<div class="textwidget">
						<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fwowthemesnet-562560840468823%2F&amp;tabs=timeline&amp;width=340&amp;height=380&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=false&amp;appId=365036103630036" width="340" height="380" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowtransparency="true">
						</iframe>
					</div>
					</aside>
					
					<aside id="text-7" class="widget widget_text">
					<h4 class="widget-title">Follow us</h4>
					<div class="textwidget">
						<!-- Place this tag in your head or just before your close body tag. -->
						<script src="https://apis.google.com/js/platform.js" async="" defer="" gapi_processed="true"></script>
						<!-- Place this tag where you want the widget to render. -->

					</div>
					</aside>
					
				</div>
				<!-- .widget-area -->
			</div>
			<!-- #secondary -->
		</div>
		<!-- #content -->
	</div>
	<!-- .container -->
	<?php $content = ob_get_clean();
	include "view/templates/layout.php";