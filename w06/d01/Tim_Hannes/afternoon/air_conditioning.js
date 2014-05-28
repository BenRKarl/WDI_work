function conditionAir(current_temp, desired_temp) {
  if (current_temp > desired_temp){
    var note = 'Turn on the A/C please.';
  }
  else if (current_temp < desired_temp){
    var note = 'Turn off the A/C please.';
  }
  else {
    var note = 'Dont change a thing!'
  }
  return note;
}
