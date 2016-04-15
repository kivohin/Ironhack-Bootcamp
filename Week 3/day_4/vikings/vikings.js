var Viking = function(name, health, strength) {
	this.name = name;
	this.health = health;
	this.strength = strength;
};

var Fight = function(viking_1, viking_2) {
	console.log("Hey there player! The pit fight is about to begin!\nPrepared for knocking each other up are " + viking_1.name + " and " + viking_2.name + "!\nFight!\n");

	this.attack = function(name) {
		if (name === viking_1.name) {
			viking_2.health -= viking_1.strength;
		}

		else if (name === viking_2.name) {
			viking_1.health -= viking_2.strength;
		}

		while ((viking_1.health - viking_2.strength) > 0 && (viking_2.health - viking_1.strength) > 0) {

			viking_2.health -= viking_1.strength;
			viking_1.health -= viking_2.strength;

			console.log("Viking " + viking_1.name + " health is " + viking_1.health + ".\nViking " + viking_2.name + " health is " + viking_2.health + ".\n");
		}

		console.log("And the fight is over!");

		if (viking_1.health > viking_2.health) {
			console.log(viking_1.name + " is the strongest!");
		}

		else {
			console.log(viking_2.name + " is the strongest!");	
		}
	};
};

var viking_anthony = new Viking("Anthony", 50, 7);
var viking_boomy = new Viking("Boomy", 77, 3);

var fight_1 = new Fight(viking_anthony, viking_boomy);
fight_1.attack("Boomy");

