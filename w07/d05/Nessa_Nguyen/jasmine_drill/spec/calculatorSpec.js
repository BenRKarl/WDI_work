describe ('Calculator', function(){
  it('performs additions', function(){
    var result = calculator.add(2, 3);
    expect(result).toEqual(5);
  });

  it('performs subtractions', function(){
    var result = calculator.subtract(2, 3);
    expect(result).toEqual(-1);
  });

  it('performs multiplications', function(){
    var result = calculator.multiply(2, 3);
    expect(result).toEqual(6);
  });
})
