$(document).on('ready', function() {
	var phrases = [
	'I like chocolate!',
	'I love Dragon Ball!',
	'I like playing Pokemon!'
	];

	function newPhrase() {
		randomNum = Math.floor(Math.random() * 3);
		$('p').text(phrases[randomNum]);
	};

	newPhrase();
});