$(document).on('ready', function() {
	var phrases = [
	'I like chocolate!',
	'I love Dragon Ball!',
	'I like playing Pokemon!',
	'Fuck the system!',
	'I\'m gonna leave this world in a better place.'
	];

	$('button').on('click', function newPhrase() {
		randomNum = Math.floor(Math.random() * 5);
		$('p').text(phrases[randomNum]);
	})

	var newPhrase = document.getElementById('form_1').value;

	phrases.push(newPhrase);
});