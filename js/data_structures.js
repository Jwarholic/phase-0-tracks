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

// Release 2
// write a construction function for a car
//   - give it a few properties of varius data types
//      - create at least 1 function 
//      - Create a few cars to show that it works

function Car(color, year, good_condition) {
  // console.log("Our new car:", this);
  this.color = color;
  this.year = year;
  this.good_condition = good_condition;
  console.log("Car INITIALIZATION COMPLETE")
  this.drives_fast = function() {console.log ("This " +  this.color + " color car drives fast"); }; 
  console.log( "Our " + this.color + this.year);
}

 var anotherCar = new Car("blue", 1808, false);
 console.log(anotherCar);
anotherCar.drives_fast();
console.log("----");
  
 var anotherCar2 = new Car("golden", 2016, true);
console.log(anotherCar2);
anotherCar2.drives_fast();
console.log("----");
