// ##Part 2
// ###Air Conditioning Conditionals
// - Write a `conditionAir` function takes a desired temperature as a parameter
//   - If the current temperture is above the the desired temperature... display "Turn on the A/C please"
//   - If the current temperture is below the the desired temperature... display "Turn off the A/C please"

function conditionAir(desiredTemp){
  var currentTemp = 75
  if (desiredTemp < currentTemp){
    console.log('Turn on the A/C please');
  } else if (desiredTemp > currentTemp){
    console.log('Turn off the A/C please');
  }
}
