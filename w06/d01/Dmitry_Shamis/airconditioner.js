// Write a conditionAir function takes a desired temperature as a parameter
// If the current temperture is above the the desired temperature... display "Turn on the A/C please"
// If the current temperture is below the the desired temperature... display "Turn off the A/C please"

function conditionAir(temp){
  if (temp > 72) {
    var note = "Turn on the A/C please.";
  }
  else {
    var note = "Turn off the A/C please.";
  }
  return note
}
