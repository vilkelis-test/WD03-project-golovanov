$(document).ready(function() {
	
	/* For custom file inputs
			Based on code
			by Osvaldas Valutis, www.osvaldas.info (Available for use under the MIT License)
			and adapted for our project usage
	*/
	$( '.file' ).each( function()
	{
		var $input	 = $( this ).find('.file__input'),
			$caption = $( this ).find( '.file__inner-caption' ),
			captionVal = $caption.html();

		$input.on( 'change', function( e )
		{
			var fileName = '';

			if( this.files && this.files.length > 1 )
				fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
			else if( e.target.value )
				fileName = e.target.value.split( '\\' ).pop();

			if( fileName )
				$caption.html( fileName );
			else
				$caption.html( captionVal );
		});

		// Firefox bug fix
		$input
		.on( 'focus', function(){ $input.addClass( 'has-focus' ); })
		.on( 'blur', function(){ $input.removeClass( 'has-focus' ); });
	});

	// Firefox bug fix for checkboxes and radiobuttons
	$('.radio__input')
		.on( 'focus', function(){ $(this).addClass( 'has-focus' ); })
		.on( 'blur', function(){ $(this).removeClass( 'has-focus' ); });

	$('.checkbox__input')
		.on( 'focus', function(){ $(this).addClass( 'has-focus' ); })
		.on( 'blur', function(){ $(this).removeClass( 'has-focus' ); });

	$('input[data-add-comment]').on('click', function(e){		
		comment = $('.comment-add-block__text').children('.textarea');
		if ( comment.val() == '' ) {
			e.preventDefault();
			$('.error-js').fadeIn();
			comment.focus(function(event) {
				$('.error-js').fadeOut();
			});
		}
		else {
			//Default action
		}
	});



/ ----- check login form ----- //
	$('.button--enter').on('click', function(e){
		input = $('.login-page-form__row').children('input');
		mail = $('.login-page-form__row').children('input[type=email]');
		password = $('.login-page-form__row').children('input[type=password]');
		if ( mail.val() == '' && password.val() == '') {
			$('.error-js').fadeIn();
			$('.error-js').text('Введите логин и пароль');
			input.focus(function(event) {
				$('.error-js').fadeOut();
			});
			e.preventDefault();
		} else if ( mail.val() == '') {
			$('.error-js').fadeIn();
			$('.error-js').text('Введите логин');
			mail.focus(function(event) {
				$('.error').fadeOut();
			});
			e.preventDefault();
		} else if ( password.val() == '' ) {
			$('.error').fadeIn();
			$('.error').text('Введите пароль');
			password.focus(function(event) {
				$('.error').fadeOut();
			});
			e.preventDefault();
		} else {
			// Стандартное действие
		}
	});

// ----- check registration form ----- //
	$('.button--registration').on('click', function(e){
		
		input = $('.registration-page-form__row').children('input');
		mail = $('.registration-page-form__row').children('input[type=email]');
		password = $('.registration-page-form__row').children('input[type=password]');
		if ( mail.val() == '' && password.val() == '') {
			$('.error-js').fadeIn();
			$('.error-js').text('Введите логин и пароль');
			input.focus(function(event) {
				$('.error-js').fadeOut();
			});
			e.preventDefault();
		} else if ( mail.val() == '') {
			$('.error-js').fadeIn();
			$('.error-js').text('Введите логин');
			mail.focus(function(event) {
				$('.error-js').fadeOut();
			});
			e.preventDefault();
		} else if ( password.val() == '' ) {
			$('.error-js').fadeIn();
			$('.error-js').text('Введите пароль');
			password.focus(function(event) {
				$('.error-js').fadeOut();
			});
			e.preventDefault();
		} else {
			// Выполняем стандартное действие
		}
	});	


// ----- check lost-password form ----- //
	$('.button--lost-password').on('click', function(e){

		mail = $('.login-page-form__row').children('input[type=email]');		
		if ( mail.val() == '') {
			$('.error-js').fadeIn();
			$('.error-js').text('Введите E-mail');
			mail.focus(function(event) {
				$('.error-js').fadeOut();
			});
			e.preventDefault();		
		} else {
			// Выполняем стандартное действие
		}
	});		

// ----- check set-new-password form ----- //
	$('.button--set-new-password').on('click', function(e){

		password = $('.login-page-form__row').children('input[type=password]');		
		if ( password.val() == '') {
			$('.error-js').fadeIn();
			$('.error-js').text('Введите пароль');
			password.focus(function(event) {
				$('.error-js').fadeOut();
			});
			e.preventDefault();		
		} else {
			// Выполняем стандартное действие
		}
	});		

	setTimeout(function(){
		$('[data-notify-hide]').slideUp(400);
	},2000);

	$('[data-notify-hide]').dblclick(function(){
		$(this).slideUp(400);
	});

});