<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Магазин вязаной одежды</title>
<script src="public/js/jquery.js" type="text/javascript"></script>
<script src="public/js/bootstrap.js" type="text/javascript"></script>
<link rel='stylesheet' href='public/css/woocommerce-layout.css' type='text/css' media='all'/>
<link rel='stylesheet' href='public/css/woocommerce-smallscreen.css' type='text/css' media='only screen and (max-width: 768px)'/>
<link rel='stylesheet' href='public/css/woocommerce.css' type='text/css' media='all'/>
<link rel='stylesheet' href='public/css/font-awesome.min.css' type='text/css' media='all'/>
<link rel='stylesheet' href='public/css/style.css' type='text/css' media='all'/>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Oswald:400,500,700%7CRoboto:400,500,700%7CHerr+Von+Muellerhoff:400,500,700%7CQuattrocento+Sans:400,500,700' type='text/css' media='all'/>
<link rel='stylesheet' href='public/css/easy-responsive-shortcodes.css' type='text/css' media='all'/>

</head>

<body class="home page page-template page-template-template-portfolio page-template-template-portfolio-php">
<div id="page">
	<div class="container">
		<header id="masthead" class="site-header">
		<div class="logo">
			<img src="images/logo.png" class="logoimg">
		</div>
		<div class="site-branding">
			<h1 class="site-title"><a href="index.html" rel="home">Магазин вязаной одежды</a></h1>
			<h2 class="site-description2">-Елена-</h2>
			<h2 class="site-description">Готовые вещи и выполненные на заказ</h2>
		</div>


		<nav id="site-navigation" class="main-navigation">
		<button class="menu-toggle">Меню</button>
		<a class="skip-link screen-reader-text" href="#content">Перейти к контенту</a>
		<div class="menu-menu-1-container">
			<ul id="menu-menu-1" class="menu">
				<li><a href="home">Главная</a></li>
				<li><a href="shop">Магазин</a></li>
				<li><a href="offers.html">Акции</a></li>
				<li><a href="blog">Блог</a></li>
				<li><a href="payment.html">Оплата и доставка</a></li>
				<li><a href="contact">Контакты</a></li>
			  <?php 
				if (!isset($_SESSION['role'])) {
			  ?>													
					<li><a href="login">Вход/Регистрация</a></li>

				<?php } 
				elseif(isset($_SESSION['role'])){
					if($_SESSION['role']=='admin' ) { 
						echo '<li><a href="adminpanel/" target=_blank>Admin panel</a></li>';					
						}
				?>
					<li class="dropdown" style="margin-top:7px;">
						<button class="btn btn-default dropdown-toggle"  type="button" data-toggle="dropdown">
						<?php echo $_SESSION['name'] ?> 
						<span class="caret"></span></button>
						<ul class="dropdown-menu">
							<li><a style="color: #b10021; background-color:white;" href="logout">Logout</a></li>								  
						</ul>
					</li>							
				<?php } ?>




			</ul>
				</div>
		</nav>
		</header>
		
		
<!-- 	<form class="nav navbar-form navbar-right"   method="GET" action="search">
		<div class="form-group">
		  <input type="text" class="form-control" name="text" placeholder="Введите текст для поиска">
		</div>
		<button type="submit" class="btn btn-default">Search</button>
	</form> -->
		
		
		
		
		</div>	
	</div>	
	</nav> <!-- /.row -->
	
	  	<div class="container">
			<div class="row">
			
				<div class="col-md-12 text-center">
					<h1 class="templatemo_logo"><?php  echo $title;  ?></h1> <!-- /.logo -->
				</div> <!-- /.col-md-12 -->
			</div> <!-- /.row -->
		</div> <!-- /.container -->

	
	
		<div class="container"> 
			<div class="row">        
				<!-- php code -  content    !!!!! -->
				<?php
					if(isset($content)) 
					{ 
						echo $content;
					}
				?>					
			</div> <!-- /.row -->
		</div>



	 
	
		<div class="container">
		  <hr>
		   <footer id="colophon" class="site-footer">
	<div class="container">
		<div class="site-info">
			<h1 style="font-family: 'Herr Von Muellerhoff';color: #ccc;font-weight:300;text-align: center;margin-bottom:0;margin-top:0;line-height:1.4;font-size: 46px;">Магазин вязаной одежды</h1>
			 <p>&copy; ARTJOM KIVONEN & KRISTINA ALEKSEJENKO @ JKTV20</p>
		</div>
	</div>	
	</footer>
	<a href="#top" class="smoothup" title="Back to top"><span class="genericon genericon-collapse"></span></a>
</div>
<!-- #page -->
<script src='public/js/jquery.js'></script>
<script src='public/js/plugins.js'></script>
<script src='public/js/scripts.js'></script>
<script src='public/js/masonry.pkgd.min.js'></script>
<script src='public/js/form.js'></script>
</body>
</html>