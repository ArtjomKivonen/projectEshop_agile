<?php
ob_start();
$title='Вход и регистрация';
?>
<div id="content" class="site-content">
			<div id="primary" class="content-area column full">
				<main id="main" class="site-main">
		<?php
		//вывод отчета о входе
			if(isset($resultLogIn) && $resultLogIn==true) {
				echo '<p style="color:green;">Login succeeded. Hello, '.$_SESSION['name'].'!</p>';
			}
			elseif(isset($resultLogIn) && $resultLogIn==false) {
				echo '<p style="color:red;">Login failed</p>';
				echo $_SESSION['error'];
				echo $resultLogIn;
			}
			if(isset($resultReg) && $resultReg[0]==true) {
				echo '<p style="color:green;">Регистрация успешна, выполните Login</p>';
			}elseif(isset($resultReg) && $resultReg[0]==false){
				echo '<p style="color:red;">Error! '.$resultReg[1].'</p>';
			}

		?>
            <div class="cont_principal">

  <div class="cont_centrar">
  <div class="cont_login">
    <form action="loginResult" method="POST">
    <div class="cont_tabs_login">
      <ul class='ul_tabs'>
        <li class="active"><a href="#" onclick="sign_in()">Войти</a>
        <span class="linea_bajo_nom"></span>
        </li>
        <li><a href="#up" onclick="sign_up()">Регистрация</a><span class="linea_bajo_nom"></span>
        </li>
      </ul>
      </div>
  <div class="cont_text_inputs">

  		<input type="text" class="input_form_sign" placeholder="Имя и фамилия" name="name" />

      <input type="text" class="input_form_sign d_block active_inp" placeholder="E-mail" name="email" />

          <input type="password" class="input_form_sign d_block  active_inp" placeholder="Пароль" name="password" />  
   <input type="password" class="input_form_sign" placeholder="Подтвердить пароль" name="confirm" />
    


    
    <!-- <a href="#" class="link_forgot_pass d_block" >Забыли пароль ?</a>    --> 
<div class="terms_and_cons d_none">
    <p><input type="checkbox" name="terms_and_cons" /> <label for="terms_and_cons">Принимаю правила.</label></p>
  
    </div>
      </div>
<div class="cont_btn">
     <button class="btn_sign" type="submit" name="login">ВОЙТИ</button>
     <button class="btn_sign" type="submit" name="send">ЗАРЕГИСТРИРОВАТЬСЯ</button>
      
      </div>
      
    </form>
    </div>
    
  </div>
  

</div>
				
				</main>
				<!-- #main -->
			</div>
			<!-- #primary -->
		</div>
		<!-- #content -->




<?php
$content= ob_get_clean();
include_once 'view/templates/layout.php';

