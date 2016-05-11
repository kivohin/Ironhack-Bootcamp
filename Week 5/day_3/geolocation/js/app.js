$(document).on('ready', function() {
	if ("geolocation" in navigator) {
	  var button = $('#where-am-i');
	  button.on('click', getLocation);
	} else {
	  alert("Geolocation is not available")
	}

	function getLocation() {
	  console.log('Getting location...');
	  navigator.geolocation.getCurrentPosition(onLocation, onError, options);
	}

	var options = {
	  enableHighAccuracy: true 
	};

	function onLocation (position) {
	  console.log('Your latitude is ' + position.coords.latitude);
	  console.log('Your longitude is ' + position.coords.longitude);
	  document.getElementById('location').innerHTML = 'Lat: ' + position.coords.latitude + ', lon: ' + position.coords.longitude;
	}

	function onError(error) {
	  console.log("Getting location failed: " + error);
	}

	function displayMap(lat, lon) {
	  // your code here
	}
});