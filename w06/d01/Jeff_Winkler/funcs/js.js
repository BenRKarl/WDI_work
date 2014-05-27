
function cit() {
  var x=2;
  console.log(x);
  var y = function cit2() {
    //console.log(x)
    x=3;
    //console.log(x);
    return x;
  }
  y();
  return console.log(x);
}
