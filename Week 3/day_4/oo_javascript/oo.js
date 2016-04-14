// ---- Example 1 ----
// var Animal = {
//   name: "Shadow",
//   noise: "Brrrr",

//   shout: function () {
//     console.log("Mooooo!");
//   },
//   makeNoise: function () {
//     // console.log(animal.noise + "!!!!") //Alternative
//     console.log(this.noise + "!!!!")
//   }
// };

// ---- Example 2 ----
// var Animal = function(name, noise) {
// 	this.name = name;
// 	this.noise = noise;

// 	this.makeNoise = function() {
// 		console.log(this.noise + "!!!!");
// 	};
// };

// var horse = new Animal("Horse", "Hihihihihe");
// var dog = new Animal("Dog", "Woooof");

// horse.makeNoise();
// dog.makeNoise();

// ---- Example 3 - Prototype ----
var Animal = function(name, noise) {
	this.name = name;
	this.noise = noise;
};

Animal.prototype.makeNoise = function() {
		console.log(this.noise + "!!!!");
};

var horse = new Animal("Horse", "Hihihihihe");
var dog = new Animal("Dog", "Woooof");

horse.makeNoise();
dog.makeNoise();