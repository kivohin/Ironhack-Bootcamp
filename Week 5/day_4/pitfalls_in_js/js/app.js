$(document).on('ready', function() {
	$('button').on('click', function(e) {
		e.preventDefault();
		var text = $('<p>').text('You clicked me');
		$('.container').append(text);
	})

	function creator(index) {
		return function() {
			console.log('Button # clicked: ' + index);
		}
	}

	for (var i = 0; i < $('button').length; i++) {
		var buttonElement = $('button')[i];
		$(buttonElement).on('click', creator(i));
	}
});