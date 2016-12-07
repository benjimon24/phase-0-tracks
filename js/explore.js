//store the new string in a variable
//go through each letter in the original string, and add it to the beginning of the new string

function reverse(string) {
	var new_string = "";
	for (var i = 0; i < string.length; i++) {
		new_string = string[i] + new_string;
	}
	return new_string
} 

console.log(reverse("hello"));
console.log(reverse("bye"));

var reversed_string = reverse("asdf");

if (reversed_string == "fdsa"){
	console.log(reversed_string);
}