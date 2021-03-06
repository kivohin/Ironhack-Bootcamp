var Viking = function(name, health, strength) {
	this.name = name;
	this.health = health;
	this.strength = strength;
};

var Fight = function(viking_1, viking_2) {
	console.log("Hey there player! The pit fight is about to begin!\nPrepared for beating each other up are " + viking_1.name + " and " + viking_2.name + "!\n");

	this.attack = function(name) {
		function shoutFight() {
		var time = 7;

			function countdown() {
				console.log(time);
				time--;
				if (time > 0) {
					setTimeout(countdown, 1000);
				}
			
				else {
					console.log("\nFight!\n");

					if (name === viking_1.name) {
						viking_2.health -= viking_1.strength;
					}

					else if (name === viking_2.name) {
						viking_1.health -= viking_2.strength;
					}

					function beginFight() {
						if ((viking_1.health - viking_2.strength) > 0 && (viking_2.health - viking_1.strength) > 0) {

							viking_2.health -= viking_1.strength;
							viking_1.health -= viking_2.strength;

							function showFight() {
								console.log("Viking " + viking_1.name + " health is " + viking_1.health + ".\nViking " + viking_2.name + " health is " + viking_2.health + ".\n");
								setTimeout(beginFight, 2000);
							};

							showFight();
						}

						else {
							console.log("And the fight is over!");

							if (viking_1.health > viking_2.health) {
								console.log(viking_1.name + " is the strongest!");
							}

							else {
								console.log(viking_2.name + " is the strongest!");	
							}
						}
					};

					beginFight();
				}
			};

			countdown();
		};

		shoutFight();
	};
};

var viking_anthony = new Viking("Anthony", 50, 7);
var viking_boomy = new Viking("Boomy", 77, 3);

var fight_1 = new Fight(viking_anthony, viking_boomy);
fight_1.attack("Boomy");

