function conditionAir(desired_temp){
  var current_temp = 70;
  if (desired_temp < current_temp){
    msg = "Turn on the A/C please";
  } else if (desired_temp > current_temp) {
    msg = "Turn off the A/C please";
  }
  console.log(msg);
}
