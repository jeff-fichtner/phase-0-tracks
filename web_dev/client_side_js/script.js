console.log("hello world")

var secondTable = document.getElementById('2')

secondTable.addEventListener("mouseover", function() {
	var h1Text = document.createTextNode("Tables:");
	var body = document.querySelector('body');
	// body.appendChild(h1Text);
	var parent = body.parentNode;
	parent.insertBefore(h1Text, body);
}, false);


var table = document.querySelector('table');
// table.style.color = "magenta";

table.onclick = function() {
	event.target.style.color = "magenta";
	setTimeout(function() {
      table.style.color = "";
    }, 2000);
};