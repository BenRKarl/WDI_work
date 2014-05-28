var currentTemp;
currentTemp = 50

function conditionAir(desiredTemp) {
  if (desiredTemp > currentTemp) {
    console.log("Turn off the A/C please");
  } else {
    console.log("Turn on the A/C please");
  }
}

conditionAir(55)
conditionAir(45)
