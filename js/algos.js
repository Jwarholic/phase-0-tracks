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

var array = ["googles", "google",  "hoobear"];
//console.log(array)

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
console.log('The longest words in the array are:'  + ' ' + word)
}

longestfinder(array);



