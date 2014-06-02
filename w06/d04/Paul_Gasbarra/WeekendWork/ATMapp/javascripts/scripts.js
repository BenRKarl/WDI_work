//update all displays

deposit.prototype

function deposit(amount){
  var balanceField = document.getElementById("balance");
  var accountBalance = parseFloat(amount.value) + parseFloat(balanceField.innerHTML);
  balanceField.innerHTML = accountBalance;
  balanceField.style.background= "grey"

}

function withdrawl(amount){
  var balanceField = document.getElementById("balance");
  var accountBalance = parseFloat(balanceField.innerHTML);
  if (accountBalance - parseFloat(amount.value) >= 0) {
    var accountBalance = accountBalance - parseFloat(amount.value);
    balanceField.innerHTML = accountBalance;
  }
  if (accountBalance === 0){
     balanceField.style.background = "red"
  } else {
     balanceField.style.background= "grey"
  }
}
//make deposit in selected account

//make withdrawl
  //no negatives
  //when negative background goes red.

//background gray when money in account.

// function updateValue(value){
//   var field = document.getElementById("balance");
//   field.innerHTML = value;
// }


window.onload = function() {
  var balanceDisplay = document.getElementById('balance');
  balanceDisplay.innerHTML = "0.00";
  balanceDisplay.style.background= "red"
  var value = document.getElementById('changeValueField');
  var depositButton = document.getElementById('deposit');
  var withdrawlButton = document.getElementById('withdrawl')
  depositButton.addEventListener('click', function(){deposit(value)})
  withdrawlButton.addEventListener('click', function(){withdrawl(value)})
}

