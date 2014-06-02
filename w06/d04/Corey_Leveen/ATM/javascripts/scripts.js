
function bankAccount(balance) {
  this.balance = balance;
}

bankAccount.prototype = {
  deposit: function(depositAmount) {
    this.balance += depositAmount;
  },

  withdraw: function(withdrawalAmount) {
    if (withdrawalAmount > this.balance) {
      console.log("Not enough funds.");
    }
    else {
      this.balance -= withdrawalAmount;
    }
  }
};

var checking = new bankAccount(100000);
var savings = new bankAccount(100000);

window.onload = function() {

  var checkingBalance = document.getElementById('checking-balance');
  var checkingInput = document.getElementById('checking-field');
  var checkingWithdrawButton = document.getElementById('checking-withdraw-button');
  var checkingDepositButton = document.getElementById('checking-deposit-button');

  var savingsBalance = document.getElementById('savings-balance');
  var savingsInput = document.getElementById('savings-field');
  var savingsWithdrawButton = document.getElementById('savings-withdraw-button');
  var savingsDepositButton = document.getElementById('savings-deposit-button');

  checkingBalance.innerHTML = "$"+checking.balance;
  savingsBalance.innerHTML = "$"+savings.balance;

    if (checking.balance == 0) {
      checkingBalance.style.color = "red";
    }
    else {
      checkingBalance.style.color = "gray";
    }

    if (savings.balance == 0) {
      savingsBalance.style.color = "red";
    }
    else {
      savingsBalance.style.color = "gray";
    }

  checkingWithdrawButton.addEventListener('click', function() {
    checking.withdraw(parseInt(checkingInput.value, 10));
    checkingBalance.innerHTML = "$"+checking.balance;
    checkingInput.value = "";
    if (checking.balance == 0) {
      checkingBalance.style.color = "red";
    }
    else {
      checkingBalance.style.color = "gray";
    }
  });
  checkingDepositButton.addEventListener('click', function() {
    checking.deposit(parseInt(checkingInput.value, 10));
    checkingBalance.innerHTML = "$"+checking.balance;
    checkingInput.value = "";
    if (checking.balance == 0) {
      checkingBalance.style.color = "red";
    }
    else {
      checkingBalance.style.color = "gray";
    }
  });

  savingsWithdrawButton.addEventListener('click', function() {
    savings.withdraw(parseInt(savingsInput.value, 10));
    savingsBalance.innerHTML = "$"+savings.balance;
    savingsInput.value = "";
    if (savings.balance == 0) {
      savingsBalance.style.color = "red";
    }
    else {
      savingsBalance.style.color = "gray";
    }
  });
  savingsDepositButton.addEventListener('click', function() {
    savings.deposit(parseInt(savingsInput.value, 10));
    savingsBalance.innerHTML = "$"+savings.balance;
    savingsInput.value = "";
    if (savings.balance == 0) {
      savingsBalance.style.color = "red";
    }
    else {
      savingsBalance.style.color = "gray";
    }
  });


};
