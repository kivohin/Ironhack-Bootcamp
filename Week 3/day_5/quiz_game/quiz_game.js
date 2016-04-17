var read = require("read");

var global_id = 1;
var ary_all_questions = [];

var Question = function(question_text, answer) {
	this.question_text = question_text;
	this.answer = answer;
	this.id = global_id;
	
	global_id++;
	ary_all_questions.push(this);
};

var Quiz = function(questions_array) {
	questions_array.forEach(function(question_object) {
		options = {
			prompt: question_object.question_text
		}

		read(options, displayAnswer);

		function displayAnswer(error, answer) {
			console.log(answer);
		};
	})
};

// options = {
// 	prompt: "What's your name?\n>"
// }
// // Our options object, the prompt is simply what will appear in the command line when read is called

// read(options, displayName)
// // The prompt itself, passing options, and using our callback function after input

// function displayName (err, name){
// 	console.log("Your name is: " + name)
// }
// // Outputs whatever the user has entered back to the console

var question_1 = new Question("Does Krillin die more than once in the Dragon Ball series?", "yes");

var question_2 = new Question("How many times has Goku won the World Martial Arts Tournament?", "one");

var question_3 = new Question("Which is the highest Saiyan level they reach in Dragon Ball Z?", "three");

var question_4 = new Question("Is Gohan the one who raised Goku when he was a child?", "yes");

var start_quiz = new Quiz(ary_all_questions);

