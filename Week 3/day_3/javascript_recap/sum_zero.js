var exampleArray = [ 2, -5, 10, 5, 4, -10, 0 ];

function process(data) {
	var positions = [];
	data.forEach(function (value_1, i) {
		data.forEach(function (value_2, j) {
			if (value_1 + value_2 === 0) {
				positions.push (i + "," + j)
			}
		}); 
	});
	console.log("Sum these pairs and got zero: " + positions.join(" or "));
	// console.log(positions);
}

process(exampleArray);