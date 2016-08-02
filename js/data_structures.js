var colorArray = ['blue','red','green','yellow'];
var nameArray = ['Ed','Jackson','Mimi','Euridice'];

colorArray.push('pink');
nameArray.push('Michael');

var horseObject = {}
for (var i = 0; i < nameArray.length; i++) {
	horseObject[nameArray[i]] = colorArray[i];
}

console.log(horseObject)

// make a loop that goes as long as the length of one of the arrays
//   for every count:
//     set key = name array at (count) index, 
//     value = color array at (count) index
// end loop


function Car(model, capacity, color) {
  this.model = model;
  this.capacity = capacity;
  this.color = color;

  this.horn = function() {
  console.log("Nosizzz!!");
  }

}

var Honda = new Car("Honda", 6, "black")
var Toyota = new Car("Toyota", 4, "blue")
var bmw = new Car("BMW", 2, "red")

console.log(Honda);
console.log(Toyota);
console.log(bmw);

Honda.horn();