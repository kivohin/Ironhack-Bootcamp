$(document).on('ready', function() {
	var phrases = [
	'I like chocolate!',
	'I love Dragon Ball!',
	'I like playing Pokemon!',
	'Fuck the system!',
	'I\'m gonna leave this world in a better place.'
	];

	var randomNum = Math.floor(Math.random() * phrases.length);
	$('p').text(phrases[randomNum]);

	$('button').on('click', function newPhrase() {
		var randomNum = Math.floor(Math.random() * phrases.length);
		$('p').text(phrases[randomNum]);
	})

	$('input').submit();
	$('input').val();
	debugger
});


	// var newPhrase = document.getElementById('form_1').name;

	// phrases.push(newPhrase);
	// debugger