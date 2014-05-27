var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 5
};

function perimeter(triangle) {
  var trianglePerimeter = triangle.sideA + triangle.sideB + triangle.sideC;
  return trianglePerimeter;
}

console.log(perimeter(triangle));
