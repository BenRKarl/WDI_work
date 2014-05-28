function conditioner(currenttemp, desiredtemp){
  if (currenttemp < desiredtemp){
    var note = 'Turn off the A/C please';
  }
  else if (currenttemp > desiredtemp){
    var note = 'Turn on the A/C please';
  }
  else if (currenttempt = desiredtemp) {
    var note = 'Youre good';
  }
  return note;
}
