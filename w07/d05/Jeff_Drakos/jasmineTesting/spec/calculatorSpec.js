describe("Calculator", function() {
	it("Two plus 3 is five", function() {
		var sum = add(2, 3);
		expect(sum).toEqual(5);
	});
	it("Two minus 3 is negative 1", function() {
		var sum = subtract(2, 3);
		expect(sum).toEqual(-1);
	});
	it("Two times 3 is six", function() {
		var sum = multiply(2, 3);
		expect(sum).toEqual(6);
	});
	it("Six divided by three is two", function() {
		var sum = divide(6, 3);
		expect(sum).toEqual(2);
	});


})