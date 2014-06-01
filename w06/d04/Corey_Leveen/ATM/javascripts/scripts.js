
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

  checkingWithdrawButton.addEventListener('click', function() {
    checking.withdraw(parseInt(checkingInput.value, 10));
    checkingBalance.innerHTML = "$"+checking.balance;
    checkingInput.value = "";
  });
  checkingDepositButton.addEventListener('click', function() {
    checking.deposit(parseInt(checkingInput.value, 10));
    checkingBalance.innerHTML = "$"+checking.balance;
    checkingInput.value = "";
  });

  savingsWithdrawButton.addEventListener('click', function() {
    savings.withdraw(parseInt(savingsInput.value, 10));
    savingsBalance.innerHTML = "$"+savings.balance;
    savingsInput.value = "";
  });
  savingsDepositButton.addEventListener('click', function() {
    savings.deposit(parseInt(savingsInput.value, 10));
    savingsBalance.innerHTML = "$"+savings.balance;
    savingsInput.value = "";
  });


};
