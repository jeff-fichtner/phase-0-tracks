// release 0 - find the longest phrase
// takes an array of words or phrases and returns the longest word or phrase in the array:

// private methods

function lengthArray(array, lengthArray) {
	for (var i = 0; i < array.length; i++) {
		lengthArray.push(array[i].length);
	}
	return lengthArray;
}

function chooseLongest(lengthArray, largest) {
	for (var i = 0; i <= largest; i++) {
		if (lengthArray[i] > largest) {
			var largest = lengthArray[i];
		}
	}
	return lengthArray.indexOf(largest);
}

// primary algorithm

function longestPhrase(array) {
	lengthArray = lengthArray(array, []);
	index = chooseLongest(lengthArray, 0);
	return array[index];
}


console.log(longestPhrase(['hello','goodbye','hi']));


// iterates through array
//   stores new array with length of string
// iterates through new array
//   finds index of largest integer
// returns object at index of largest integer in original array



// release 1 - find a key-value match
// takes two objects and checks to see if the objects share at least one key-value pair

// Input: two objects
// Set 'match' variable to false
// Loop through all object pairs 
// 	If pairs are a match
// 		Update 'match' to true
// 	End if
// End loop
// print result



// release 2 - generate random test data
// takes an integer for length, and builds and returns an array of strings of the given length

// input: integer
// loop 'integer' times
// 	store random number 1-10
// 	use random number to select random letters
// 	put them in string
// 	add to array
// end loop