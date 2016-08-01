// reverse method for javascript

// input: word
// split word into list of characters
// loop through characters
// 		insert characters into new array, starting from last character
// rejoin characters
// output: reversed word

function reverse(word) {
	var sortingArray = [];
	var characterArray = word.split("");
	var count = characterArray.length;
	for (var i = 0; i < count; i++) {
		var index = count - (i + 1);
		sortingArray.push(characterArray[index]);
	}
	return sortingArray.join("");
}

var str = "hello";
var test = reverse(str);
if (1 == 1) {
	console.log("The reverse of \"" + str + "\" is \"" + test + "\".");
}