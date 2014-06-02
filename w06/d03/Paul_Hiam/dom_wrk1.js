document.body.lastChild.previousSibling.previousSibling.previousSibling.lastChild.previousSibling

document.body.firstChild.nextSibling.firstChild.nextSibling.nextSibling.nextSibling

document.body.lastElementChild.previousElementSibling.lastElementChild.previousElementSibling.previousElementSibling.previousElementSibling

document.body.firstElementChild.firstElementChild.nextElementSibling


function appendGreat(ul){
  var elems = ul.children;
  for (var i = 0; i < elems.length; i++){
    elems[i].innerHTML += "...the great";
  }
}
function makeGroovy(ul){
 var elems = ul.children;
  for (var i = 0; i < elems.length; i++){
    elems[i].setAttribute('groovy', 'true');
  }
}
function makeTeachClass(ul){
 var elems = ul.children;
  for (var i = 0; i < elems.length; i++){
    elems[i].setAttribute('class', 'teacher');
  }
}

function changeTagFont(tagName, fontFamily){
  var instances = document.getElementsByClassName(tagName);
  for (var i = 0; i < instances.length; i++){
    instances[i].style.fontFamily = fontFamily;
  }
}

function buildSquares(num, size){
  var elems = [];
  for (var i = 0; i < num; i++){
    var sq = document.createElement('div'); sq.style.width = size+'px';
    sq.style.width = size+'px';
    elems.push(sq);
  }
  return elems;
}
function buildSmileyFace(num, size){
  var elems = [];
  for (var i = 0; i < num; i++){
    var circle = document.createElement('div');
    circle.style.width = size;
    circle.style.height = size;
    circle.id = 'size';
    circle.style.borderRadius = size/2;
    circle.style.backgroundColor = 'lightblue';
    var textNode = document.createTextNode('^_^');
    circle.appendChild(textNode);
    elems.push(circle);
  }
  return elems;
}

function appendSmileys(num, size){
  var smileys = buildSmileyFace(num, size);
  var ul = document.getElementById('smileys');
  for (var i = 0; i < smileys.length; i++){ 
    ul.appendChild(smileys[i]);
  }
}

//function rand color somewhere in gist or inst etc*

// parentElem.insertBeforea(elem, nextSibling)

//function create li nodes from array of our names
//function append those li's to the ul we made with id='students'  ** loook for in matt's version.


