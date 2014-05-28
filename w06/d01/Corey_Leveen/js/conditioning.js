currentTemp = 80;
function conditionAir(desired_temp) {
  if (currentTemp > desired_temp) {
    console.log("Turn on the A/C please");
  }
  else if (currentTemp < desired_temp) {
    console.log("Turn off the A/C please");
  }
  else {
    console.log("Just right! Do nothing. Relax. Cool.");
  }
}
