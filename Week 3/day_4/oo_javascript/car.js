var Car = function(model, noise) {
	this.model = model;
	this.noise = noise;
	this.wheels = 4;
};

Car.prototype.makeNoise = function() {
	console.log(this.noise);
};

var car_1 = new Car("4x4", "Bruuu");
var car_2 = new Car("Sport", "Spshhh");

car_1.makeNoise();
car_2.makeNoise();