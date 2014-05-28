var currentTemp = 75
function conditionAir(desiredTemp) {
if (desiredTemp > 75) {
  var note = "Turn on the A/C please";
} else if (desiredTemp < 75) {
  var note = "Turn off the A/C please";
}
return note;
}

