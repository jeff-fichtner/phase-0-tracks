console.log("hello world")

var h1Text = document.createTextNode("Tables:");
var body = document.querySelector('body');
// body.appendChild(h1Text);
var parent = body.parentNode;
parent.insertBefore(h1Text, body);


var table = document.querySelector('table');
table.style.color = "magenta";