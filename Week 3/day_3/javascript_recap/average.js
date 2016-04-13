var numbers = "80:70:90:100";
var avg = 0;

function averageColon(string_numbers) {
	var separatedNumbers = string_numbers.split(":")

	var total_sum = separatedNumbers.reduce(function (sum, num) {
		return parseInt(sum) + parseInt(num);
	});
	avg = total_sum/separatedNumbers.length;
	return avg;
}

var result = averageColon(numbers);
console.log(result);