describe ('Calculator', function() {
   
   var calculator, num1, num2;

   beforeEach(function() {
      calculator = new Calculator();
      num1 = 4;
      num2 = 2;
   });

   it('adds two numbers', function() {

      var actual = calculator.add(num1, num2);
      var expected = 6;
      expect(actual).toEqual(expected); 
   });

   it('subtracts one number from another',function() {
      var actual = calculator.subtract(num1, num2);
      var expected = 2;
      expect(actual).toEqual(expected);
   });

   it('multiplies two number together', function() {
      var actual = calculator.multiply(num1, num2);
      var expected = 8;
      expect(actual).toEqual(expected);
   });

   it('divides one number by another', function() {
      var actual = calculator.divide(num1, num2);
      var expected = 2;
      expect(actual).toEqual(expected);
   })
})