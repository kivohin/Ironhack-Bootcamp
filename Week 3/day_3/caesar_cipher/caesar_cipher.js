function caesarCipher(message, shift) {
	if (shift === undefined) {
		shift = -3;
	}

	var ary_letters_original = message.split("");

	var ary_letters_shifted = ary_letters_original.map(function (letter) {
		if (letter >= "A" && letter <= "Z") {
			var num = letter.charCodeAt(0) + shift;

			if (num < 65) {
				num += 26;
			}

			else if (num > 90) {
				num -= 26;
			}

			return String.fromCharCode(num);
		}

		else if (letter >= "a" && letter <= "z") {
			var num = letter.charCodeAt(0) + shift;

			if (num < 97) {
				num += 26;
			}

			else if (num > 122) {
				num -= 26;
			}

			return String.fromCharCode(num);
		}

		else {
			return letter;
		}
	});

	var message_shifted = ary_letters_shifted.join("");
	return message_shifted;
}

var encrypted = caesarCipher("Et tu, brute?", 6);
console.log(encrypted);

// console.log("a".charCodeAt(0))
// console.log("z".charCodeAt(0))
// console.log("A".charCodeAt(0))
// console.log("Z".charCodeAt(0))

// "_orqrp" - "Bq qr, _orqb?"