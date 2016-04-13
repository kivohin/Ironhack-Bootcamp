// ---- Example 1 ----
// var exampleArray = [ 2, -5, 10, 5, 4, -10, 0 ];

// ---- Example 2 ----
// function eat (food) {
// 	console.log("Eating some " + food + ".");
// }

// eat("Mango");

// ---- Example 3 ----
// var foods = [ "mango", "pear", "carrot"];

// foods.forEach(function (food) {
// 	console.log(food);
// });

// ---- Example 4 ----
// var foods = [ "mango", "pear", "carrot"];

// var capsFoods = foods.map(function (food) {
// 	return food.toUpperCase();
// });

// console.log(capsFoods);

// ---- Example 5 ----
// var foods = [ "mango", "pear", "carrot"];

// var msg = foods.reduce(function (pre, food) {
// 	return pre + " AND " + food;
// });

// console.log(msg);

// ---- Example 6 ----
var foods = [ "mango", "pear", "carrot"];

var bestFoods = foods.filter(function (food) {
	return food != "carrot";
});

console.log(bestFoods);
