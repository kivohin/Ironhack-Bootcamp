var fs = require("fs");

function fileActions(error, file) {
	if (error) {
		throw error;
	}

	var episodes = 	JSON.parse(file);

	var ordered_episodes = episodes.sort(function(a, b) {
		return a.episode_number - b.episode_number;
	});

	for (var j = 0; j < ordered_episodes.length; j++) {
		var rating_abs = Math.round(ordered_episodes[j].rating);
		var stars = "";
		for  (var i = 0; i < rating_abs; i++) {
			stars += "*";
		}

		console.log("Title: " + ordered_episodes[j].title + " #: " + ordered_episodes[j].episode_number + "\n" + ordered_episodes[j].description + "\n" + "Rating: " + ordered_episodes[j].rating + " " + stars + "\n");
	}
};

fs.readFile("./game_of_thrones.txt", "utf-8", fileActions);