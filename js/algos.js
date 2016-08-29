 //Release 0: Find the Longest Phrase
 // -Define a function with a an array as a parameter
 // 	- Set a longest count for comparison
 // 		- set a word variable to store the longest word
 // 	- Loop through the array
 // 		- while the count is less than the count of the array
 // 			-  check to see if the current index is longer than the current
 // 			-  If longer store the new word into longest
 // 			-  If the length is the same also add it in the longest word 
 // 	- Print out the final version of word to see the longest word or words

function longestfinder(array) {
	var longest = 0;
	var word = '';
	for (var i = 0; i < array.length; i++) {
	if (array[i].length > longest ) {
		var longest = array[i].length;
		var word = array[i];
	} else if (array[i].length == longest ) {
		var word = word+ ' ' + array[i];
	}
}
return console.log('The longest words in the array are:'  + ' ' + word)
}


// var array = ["googles", "google",  "hoobear"];
// longestfinder(array);
// var array2 = ["googles", "google",  "hoobear" , "really long word"];
// longestfinder(array2);
// var array3 = ["a", "bb", "ccc" , "dddd"];
// longestfinder(array3);

// Release 1: Find a Key-Value Match
// input: two objects
// ouput: true if any matches / false if no matches

// Define a function that takes two objects
//   -Loop through one of the objects
//       - For each key/value pair in the object
//       - Compare if any of these match to the other object
//          -If a match is found
//            - Return true
//           - If no match found
//              -Return false


var list1 = {name: "Jason", age: 351, height: 57, weight: 180};
var list2 = {name: "Lisa", age: 35, height: 57, weight: 140};
function compare(para1, para2){
	var match = false;
	
	for(var i in list1) {
	 	 for(var j in list2) 
	 		 if (list1[i]==list2[j]) {
	 	 	console.log("A matching value in the list was" +' ' +list2[j]);
	 	 	var match = true;
	 	 }
	 }
	 if  (match === false) {
	 	console.log("No Matches Found");
	 	return false;
	 }
}

// compare(list1, list2);


// Release 2: Generate Random Test Data
// Write a function that takes an integer for length
//   -build an array of strings with the given length
//       -input random(3)
//        -output 3 random words back
//        -word should be mininum of 1 letter
//            -max of 10 letters



//  Define a random function that takes an integer as a parameter
   // - Create an empty array to store the final words
        // - create the alphabet to choose a random letter
        // 	-set a for loop while the count nis less than the number parameter
        // 	-set an empty word to store the word 
        // 	    -make a randlen count to choose a random number 1-10
        // 	    - make a loop to create a word until the length matches the randlen
        // 	    - push the word into the array 
        // - return the final array

function random(n) {
	var arr = [];
	var chars ="abcdefghijklmnopqrstuvwxyz";
	for (var i = 0; i < n; i++) {
		var word = "";
		var randlen = Math.floor(Math.random() * (10 - 1) +1);
		for (var index = 0; index < randlen; index++) {
			word += chars.charAt(Math.random().toString()* chars.length);
		}
		arr.push(word);
	}
	return arr;
}

//random(5)


// Add driver code that does the following 10 times: generates an array, 
//prints the array, feeds the array to your "longest word" function, and prints the result.

for (var i = 0; i < 10; i++) {
	arr = random(5)
	console.log(arr)
	longest = longestfinder(arr)
	console.log(longest)
}

