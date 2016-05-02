$(document).on('ready', function() {
	var colors = [
		'#4AE34C',
		'#3624E3',
		'#E3201A',
		'#08EAFF'
	]

	$('.make_disappear').on('click', function() {
		$('h1').fadeToggle();
		$('p').fadeToggle();
	})

	$('.unicornify').on('click', function() {
		setInterval(setUnicornMode, 200);
	})

	function setUnicornMode() {
		var randomNum = Math.floor(Math.random() * 4);

		$('h1').css('color', colors[randomNum]);
		$('p').css('color', colors[randomNum]);
	};
});