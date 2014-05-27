var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 5
};

var a = triangle.sideA;
var b = triangle.sideB;
var c = triangle.sideC;


function perimeter (a, b, c) {
  var p = a + b + c;
  console.log("The perimeter of the triangle is " + p);
}



console.log(perimeter(triangle.sideA, triangle.sideB, triangle.sideC))
