<div class="header__nav-block">
	<ul class="header__nav">
		<li class="header__nav-items"><a class="header__nav-link <?=$uri[0] == '' ? 'header__nav-link--active' : ''?>" href="<?=HOST?>">Главная</a></li>
		<li class="header__nav-items"><a class="header__nav-link <?=$uri[0] == 'about' ? 'header__nav-link--active' : ''?>" href="<?=HOST?>about">Обо мне</a></li>
		<li class="header__nav-items"><a class="header__nav-link <?=$uri[0] == 'portfolio' ? 'header__nav-link--active' : ''?>" href="<?=HOST?>portfolio">Работы</a></li>
		<li class="header__nav-items"><a class="header__nav-link <?=$uri[0] == 'blog' ? 'header__nav-link--active' : ''?>" href="<?=HOST?>blog">Блог</a></li>
		<li class="header__nav-items"><a class="header__nav-link <?=$uri[0] == 'contacts' ? 'header__nav-link--active' : ''?>" href="<?=HOST?>contacts">Контакты</a></li>
	</ul>
</div>