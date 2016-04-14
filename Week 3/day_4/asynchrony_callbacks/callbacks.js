// ---- Example 1 ----
// function shout() {
// 	console.log("Aaaaaah!");
// };

// setTimeout(shout, 2000);

// ---- Example 2.0 - Blast off ----
// function blastOff(time) {
// 	while (time >= 0) {
// 		console.log(time);
// 		time--;
// 	}
// 	console.log("Blast off! Whoooo! :D")
// };

// blastOff(5);

// ---- Example 2.1 - Blast off with setTimeout ----
// function blastOff(time) {
// 	function countdown() {
// 		console.log(time);
// 		time--;
// 		if (time >= 0) {
// 			setTimeout(countdown, 1000);
// 		}
		
// 		else {
// 			console.log("Blast off! Whoooo! :D");		
// 		}
// 	};
	
// 	countdown();
	
// };

// blastOff(5);

// ---- Example 3 - Sleep function ----
function sleep(func, time) {
	var time_ms = time * 1000
	setTimeout(func, time_ms);
	console.log("Like " + time + " seconds!");
};

sleep(function() {
	console.log("It has been a few seconds...")
}, 5);

