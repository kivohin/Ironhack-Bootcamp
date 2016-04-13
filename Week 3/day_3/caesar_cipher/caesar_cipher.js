function caesarCipher(message) {
	var ary_letters_original = message.split("");

	var ary_letters_shifted = ary_letters_original.map(function (letter) {
		var num = letter.charCodeAt(0) - 3;
		return String.fromCharCode(num);
	});
	var message_shifted = ary_letters_shifted.join("");
	return message_shifted;
}

var encrypted = caesarCipher("brutus");
console.log(encrypted);

// "_orqrp"