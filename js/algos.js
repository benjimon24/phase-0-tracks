//input: array
//output: string
// declare a variable to store the longest word
// iterate through the array and compare each string to the variable
// if the length of the current string is longer than the variable, set the variable to the string

function longest_word(array) {
	var longestWord = "";
	for (var i = 0; i < array.length; i++){
		if (array[i].length > longestWord.length) {
			longestWord = array[i]
		}
	};
	return longestWord;
}

// I just wanted to test what 'string' is in this syntax
// function display_array(array) {
// 	for (var string in array) {
// 		console.log(string);
// 	}
// }

//input: two objects
//output: true or false
//iterate through every key in first_object, if it shares a value with that same key in second object, return true
//otherwise return false

function key_value_match(first_object, second_object){
	for (var key in first_object){
			if (first_object[key] == second_object[key]) {
				return true;
			}
	}
	return false;
}


//input - integer
//output - array of strings
//use helper method for building a string of random length between 1-10 characters long
//set a new variable equalt to an empty arrow
//loop until we reached the desired length:
//push random strings into it

function random_string() {
	var randomString = "";
	var length = Math.floor((Math.random() * 10) + 1);
	var letters = "abcdefghijklmnopqrstuvwxyz"
	for (var i = 0; i < length; i++){
		randomString += letters.charAt(Math.floor(Math.random() * letters.length));
	}
	return randomString
}

function random_array(length) {
	var randomArray = [];
	for (var i = 0; i < length; i++) {
		randomArray.push(random_string());
	}
	return randomArray
}

// DRIVER CODE FOR RELEASE 0
var testArray = ["long phrase","longest phrase","longer phrase"];
var testArrayTwo = ["long phrase","longest phrase","longer phrase", "longestest phrase"];
console.log(longest_word(testArray));
console.log(longest_word(testArrayTwo));
// display_array(testArray)

// DRIVER CODE FOR RELEASE 1
var objectOne = {name: "Steven", age: 54};
var objectTwo = {name: "Tamir", age: 54};
var objectThree = {name: "Steven", age: 27};
var objectFour = {name: "Ben", age: 32};
console.log(key_value_match(objectOne, objectTwo)); //  true
console.log(key_value_match(objectOne, objectThree)); // true
console.log(key_value_match(objectTwo, objectFour)); // false
console.log(key_value_match(objectThree, objectFour)); //false

// DRIVER CODE FOR RELEASE 2

// console.log(random_string())
// console.log(random_string())

// console.log(random_array(3));
// console.log(random_array(4));
// console.log(random_array(5));

for (var i = 0; i < 10; i++) {
	var newArray = random_array(i + 1)
	console.log(newArray)
	console.log(longest_word(newArray))
}