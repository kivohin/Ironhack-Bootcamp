var fs = require("fs");

function print(error, content) {
	if (error) {
		console.log("Shit! We've an error!", error)
	}

	else {
		console.log("Yeah!", content)
	}
};

fs.readFile("read.txt", "utf-8", print);