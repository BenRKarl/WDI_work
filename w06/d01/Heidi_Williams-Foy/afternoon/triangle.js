// function perimeter(sideA, sideB, sideC){
// 	var triangle = {sideA: 3, sideB: 4, sideC: 5};
// 	console.log 
// };



// return (sideA + sideB + sideC);





function perimeter(triangle){
	var answer = triangle.sideA + triangle.sideB + triangle.sideC;
	return answer;
};

var triangle = {sideA: 3, sideB: 4, sideC: 5};

console.log('answer: ', perimeter(triangle))

