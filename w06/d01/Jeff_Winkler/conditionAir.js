
var currentTemp = 72;

function conditionAir(tempWanted) {
  if (tempWanted < currentTemp) {
    console.log('Turn on the A/C please')
  } else if (tempWanted > currentTemp) {
    console.log('Turn off the A/C please')
  } else {
    console.log('Just right')
  }
}

conditionAir(71);
conditionAir(73);
conditionAir(72);

