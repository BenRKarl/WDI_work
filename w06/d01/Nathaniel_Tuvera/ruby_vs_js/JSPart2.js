function conditionAir(desiredTemp){

var currentTemp = 84;

  if (desiredTemp < currentTemp){
    var note = "It's " + currentTemp + "degrees, Please turn off the A/C it is way too cold";
  }
  else if (desiredTemp > currentTemp){
    var note = "It's " + currentTemp + "degrees, Please turn on the A/C it is way too hot";
  }
  else {
    var note = "IT'S " + currentTemp + "DEGREES, DON'T TOUCH THAT THERMOSTAT";
  }
  return note;
}

console.log(conditionAir(90))

console.log(conditionAir(60))

console.log(conditionAir (84))
