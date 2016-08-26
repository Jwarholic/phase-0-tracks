// Release 0:
// Creat two arrays one array for colors and the other array for hourse's names
// and print out the arrays
var color = ["red", "blue" , "yellow", "green"]; 
var horse_names =[ "ed", "joel", "jason", "betsy"]; 
console.log(color);
console.log(horse_names);


// Add 1 new color to color array 
// Add 1 new horse to the horse array

color.push("gold");
horse_names.push("nancy");
console.log(color);
console.log(horse_names);

// Release: 1
// -Take our two arrays color and horse_names (same length)
//   -Make a  for loop to add all colors and horse_names to a new object
//     -Create empty object
//     -For each index of colors 
//        -Add horse_names as a key in the new object
//        -Add color as a value in the new object
//   Convert to an object using horse names as keys
//   colors as values

 var horses = {};

 for (var i = 0; i < color.length; i++) {
  horses[horse_names[i]] = color[i];
 }
console.log(horses);



