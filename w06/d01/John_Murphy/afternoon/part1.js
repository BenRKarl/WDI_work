// ##Part 1
// ###Triangle Perimeter function
// - Given the following object, write a `perimeter` function in JavaScript that calculates the perimeter of triangle:

// ```javascript

// var triangle = {
//   sideA: 3,
//   sideB: 4,
//   sideC: 5
// };

// ```

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 5
};

function perimeter(triangle){
  return triangle["sideA"] + triangle["sideB"] + triangle["sideC"]
}

console.log (perimeter(triangle))
