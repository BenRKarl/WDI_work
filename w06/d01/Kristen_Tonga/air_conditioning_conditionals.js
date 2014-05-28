function air_condit(temp){
  if (temp >= 75){
    var note = "Turn on the A/C please"
  } else if (temp < 75){
    var note = "Turn off the A/C please"
  } else{
    var note = "Sorry didn't catch that"
  }
  return note;
}

console.log(air_condit(76))
console.log(air_condit(75))
console.log(air_condit(74))
console.log(air_condit('string'))
