/*Part 2
###Air Conditioning Conditionals
- Write a `conditionAir` function takes a desired temperature as a parameter
  - If the current temperture is above the the desired temperature... display "Turn on the A/C please"
  - If the current temperture is below the the desired temperature... display "Turn off the A/C please"*/

  function conditionAir(desiredTemperature){
   if (desiredTemperature > 70){
 	var note = 'Turn on the A/C please';
   } else if (desiredTemperature < 70){
   	var note = 'Turn off the A/C please';
   }
   return note;
  }