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