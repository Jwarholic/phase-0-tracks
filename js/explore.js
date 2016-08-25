// - create a function reverse that takes a string as a parameter
//   - create a new variable to store our transformed string
//     - For each character in the string
//        - add into the transformed string starting from the end
//        - until all of the characters in the string are added
//        - Return the newstring



function reverse(string) {
var newstr = ''
for (var i = string.length-1; i >=0; i--) {
	 newstr += string[i]; }
	 return newstr;
}


// Driver Code
reverse("hello")