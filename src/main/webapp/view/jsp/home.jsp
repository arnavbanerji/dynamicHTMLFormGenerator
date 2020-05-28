<!DOCTYPE HTML>
<html>
<head>
      <meta charset = "ISO-8859-1">
      <title>Dynamic HTML form generator</title>
      <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
      <link rel="stylesheet" href="/css/main.css">
</head>
<body>

<h1 style="color:#ff6600;"><i>Drag and drop the below desired form elements after clicking on + button:</i></h1>

    <input id="drag1" placeholder="Text Input" type="text" name="textButton" draggable="true" ondragstart="drag(event)"></input>
    <input id="drag2" placeholder="Radio Button" type="text" name="radioButton" draggable="true" ondragstart="drag(event)"></input>
    <input id="drag3" placeholder="Checkbox" type="text" name="checkbox" draggable="true" ondragstart="drag(event)"></input>
    <input id="drag4" placeholder="File Input" type="text" name="fileInput" draggable="true" ondragstart="drag(event)"></input>
    <input id="drag5" placeholder="Submit" type="text" name="submit" draggable="true" ondragstart="drag(event)"></input>

    <br><br><br><br>
<form method="post" action="saveDetails">
    <button id="addForm" type="button" onclick="createDiv1()"><b>+</b></button>
    <br><h4>Click + button to add form elements</h4>
    <input type="submit" value="Preview">
</form>

<script>
function allowDrop(ev) {
  ev.preventDefault();
}

function drag(ev) {
  ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
  ev.preventDefault();
  var data = ev.dataTransfer.getData("text");
  var nodeCopy = document.getElementById(data).cloneNode(true);
  nodeCopy.id = "newId";
  ev.target.appendChild(nodeCopy);
}

function createDiv1() {
var div = document.createElement('div');
div.id = "div1";
div.addEventListener("drop", function() {
  drop(event);
});
div.addEventListener("dragover", function() {
  allowDrop(event);
});
       //document.getElementsByTagName('body')[0].replaceChild(div);

       var element = document.getElementById("addForm");
    	element.insertBefore(div, element.lastChild);
}
</script>
</body>
</html>