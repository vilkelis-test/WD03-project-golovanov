	<div class="registration-page-content">
		<div class="registration-page__container">
			<div class="registration-page-header">
				<div class="header__logo ml-100"><a class="header__logo-icon-link" href="#"><i class="far fa-paper-plane"></i></a>
					<div class="header__general">
						<p class="header__title mb-0"><a class="header__title" href="index.html">Супер Сайт</a></p>
					</div>
				</div>

               
				<div class="header-user mt-45 mr-45">
					<?php if ($uri[0] == "login") { ?>
					<a class="login-page__links" href="registration">Регистрация</a>
					<?php } else { ?>
					<a class="login-page__links" href="login">Вход</a>
					<?php } ?>
				</div>


			</div>

			<?php
			 echo $pageContent;
			?>

			<div class="registration-page-footer">
				<div class="footer__copyright">
					<p>© Юрий Ключевский</p>
					<p>Создано c <i class="fas fa-heart"> </i> в <a class="link-bold" href="http://webcademy.ru/">WebCademy.ru</a> в 2017 году </p>
				</div>
			</div>
		</div>
	</div>		