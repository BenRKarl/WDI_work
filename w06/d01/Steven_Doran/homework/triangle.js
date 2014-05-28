var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 5
};

function perimeter(triangle){
    return (triangle.sideA + triangle.sideB + triangle.sideC);
}  

a = perimeter(triangle)

console.log("Triangle = sideA: 3, sideB: 4, sideC: 5. The perimiter of the triangle is: ")
console.log(a)  