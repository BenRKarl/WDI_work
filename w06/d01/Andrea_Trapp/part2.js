// Write a conditionAir function takes a desired temperature as a parameter
// If the current temperture is above the the desired temperature... display "Turn on the A/C please"
// If the current temperture is below the the desired temperature... display "Turn off the A/C please"


function conditionAir(currentTemperature, desiredTemperature){
  if (currentTemperature > desiredTemperature) {
    console.log('Turn on the A/C please.');
  } else if (currentTemperature < desiredTemperature) {
      console.log('Turn off the A/C please.');
  } else {
      console.log('Perfect temperature... not too cool and not too hot.');
  }
}

var currentTemperature = 90;
var desiredTemperature = 70;
conditionAir(currentTemperature, desiredTemperature)

