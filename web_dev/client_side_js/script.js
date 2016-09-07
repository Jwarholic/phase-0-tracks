console.log("The script is running!");


//Release1
// Change the background color of body to a new color
var body = document.getElementsByTagName("body");
mainbody = body[0];
mainbody.style.backgroundColor = "grey";



// Release 2
//Add a event listener
// Make the lizard GIANT button make the lizzard bigger.
// The tiny button to make him smaller.

var button = document.getElementsByTagName("button");
tiny = button[0];
giant = button[1];

function maketiny(event) {
  var photo = document.getElementById("lizard-photo");
  console.log("click happened! here's the click event:");
  console.log(event);
  photo.style.height = "40px";
  photo.style.width = "40px"
}

function makebig(event) {
  var photo = document.getElementById("lizard-photo");
  console.log("click happened! here's the click event:");
  console.log(event);
  photo.style.height = "400px";
  photo.style.width = "400px"
}

tiny.addEventListener("click", maketiny);
giant.addEventListener("click", makebig);