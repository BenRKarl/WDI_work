
function conditionAir(temperature, desired) {
  if (temperature > desired){
    var message = "Turn on the A/C please.";
  } else if (temperature <= desired) {
    var message = "Turn off the A/C please";
  }
  return message;
}
