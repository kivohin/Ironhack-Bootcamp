$(document).on('ready', function() {
	$('.make_disappear').on('click', function() {
		$('h1').fadeOut();
		$('p').fadeOut();
	})

	$('.unicornify').on('click', function() {
		$('h1').toggleClass('unicorn-mode');
		$('p').toggleClass('unicorn-mode');
	})
});