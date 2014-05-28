function conditionAir(currentTemp, desiredTemp){
    if (desiredTemp < currentTemp){
        var response = "Turn off the A/C please";
    } else if (desiredTemp > currentTemp){
        var response = "Turn on the A/C please";
    } else {
        var response = "Word.";
    }
    console.log(response);
}

console.log("Current Temp: 70, Desired Temp: 65");
conditionAir(70,65);

console.log("Current Temp: 50, Desired Temp: 65");
conditionAir(50,65);

console.log("Current Temp: 73, Desired Temp: 73");
conditionAir(73,73);