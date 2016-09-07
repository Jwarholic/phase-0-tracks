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
move = button[2];

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


// Make the lizard move

function myMove() {
  console.log("click happened! here's the click event:");
  var elem = document.getElementById("lizard-photo");
  var pos = 0;
  var id = setInterval(frame, 5);
  function frame() {
    if (pos == 350) {
      clearInterval(id);
    } else {
      pos++;
      elem.style.top = pos + 'px';
      elem.style.left = pos + 'px';
    }
  }
}

move.addEventListener("click", myMove);