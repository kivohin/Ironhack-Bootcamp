$(document).on('ready', function() {
	var api_url = 'https://api.spotify.com/v1/search?type=artist&query='
	var artistsArray = [];
	
	$('form').on('submit', function(event) {
		event.preventDefault();
		var artist = $('#artist').val();
		var data = {
			artist: artist
		}

		$.ajax({
			url: api_url + artist,
			method: 'get',
			success: function(res) {
				console.log('Response delivered');
				$('.container').empty();

				artistsArray = res.artists.items;

				artistsArray.forEach(function(artist) {
					var divTag = $('<div>');
					var h2Tag = $('<h2>').text(artist.name);
					var imageTag = $('<img>').attr({'src':artist.images[0].url, 'data-toggle':'modal', 'data-target':'#myModal', 'id':artist.id});

					divTag.append(h2Tag);
					divTag.append(imageTag);

					$('.container').append(divTag);

				})
				giveClickPower();

			},
			error: function(err) {
				console.log('A dangerous error ocurred!');
			}
		});
	})

	function giveClickPower() {
		$('.container').on('click', 'img', function() {
			artist_id = event.target.id;
			url = 'https://api.spotify.com/v1/artists/' + artist_id + '/albums';
			
			$.ajax({
				url: url,
				method: 'get',
				success: function(res) {
					debugger
					albumsArray = res.items;
					var ul = $('<ul>');

					albumsArray.forEach(function(album) {
						var li = $('<li>').text(album.name);
						ul.append(li);
					})

					$('.modal-body').append(ul);
					$('#myModal').modal('show');
				}
			});

		})
	};
});