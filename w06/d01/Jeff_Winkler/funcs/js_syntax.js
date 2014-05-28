
var na = ['Lich', 'Da', 'Grey'];

function mult(x,y) {
  return (x*y);
}

function greet(jf) {
  if (jf > 10) {
    var n = "great";
  } else if (jf > 0) {
    var n = "ok";
  }  else {
    var n="eh";
  }
  return n;
}


na.forEach(function(x,y){
  console.log(y);

})
