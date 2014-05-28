
var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 5
};

function perimeter(triangle){
  return (triangle["sideA"] + triangle["sideB"] +
    triangle["sideC"]);
}


console.log(perimeter(triangle));

