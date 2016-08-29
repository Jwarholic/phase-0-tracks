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


var array = ["googles", "google",  "hoobear"];
longestfinder(array);
var array2 = ["googles", "google",  "hoobear" , "really long word"];
longestfinder(array2);
var array3 = ["a", "bb", "ccc" , "dddd"];
longestfinder(array3);

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

compare(list1, list2);