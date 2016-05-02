$(document).on('ready', function() {
	var url = 'https://ironhack-characters.herokuapp.com/characters';

	function fetchCharacters() {
		$.ajax({
			url: url,
			method: 'get',

			success: function(res) {
				$('.container').empty();
				console.log('Response delivered');
				
				res.forEach(function(character) {
					var listCharacters = $('<ul>').append('<li>' + '<h1>' + character.name + '</h1>' + '</li>' + '<li>' + character.occupation + '</li>' + '<li>' + character.weapon + '</li>' + '<li>' + character.debt + '</li>');
					$('.container').append(listCharacters);
				})
			},

			error: function(err) {
				console.log('A dangerous error ocurred!');
			}
		})
	};

	$('form').on('submit', function(e) {
	  e.preventDefault();
  	
  	var name = $('#name').val();
  	var occupation = $('#occupation').val();
  	var weapon = $('#weapon').val();
  	var debt = $('#debt').val();
  	
  	var data = {
  		name: name,
  		occupation: occupation,
  		weapon: weapon,
  		debt: debt
  	};

  	$.ajax({
  		url: url,
  		type: 'post',
  		data: data,

  		success: function(res) {
  			fetchCharacters();
  		},

  		error: function(err) {
  			debugger
  		}
  	})
	 })

	fetchCharacters();
});
