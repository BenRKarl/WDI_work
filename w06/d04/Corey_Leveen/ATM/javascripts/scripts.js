// Needs major refactoring: make a bank account prototype
function bankAccount(balance) {
  this.balance = balance;
}

bankAccount.prototype = {
  var bal = document.createElement('h3');
  bal.innerHTML = this.balance;

  deposit: function(depositAmount) {
    this.balance += depositAmount;
  },

  withdraw: function(withdrawalAmount) {
    this.balance -= withdrawalAmount;
  }
};

var checking = new bankAccount(100000);
var savings = new bankAccount(100000);


  // var checking = {
  //   var balance = 0;
  //   this.balance = balance;
  //   withdraw: function(withdrawAmount){
  //     this.balance -= withdrawAmount;
  //   },
  //   deposit: function(depositAmount){
  //     this.balance += depositAmount;
  //   }
  // };

  // var savings = {
  //   var balance = 0;
  //   this.balance = balance;
  //   withdraw: function(withdrawAmount){
  //     this.balance -= withdrawAmount;
  //   },
  //   deposit: function(depositAmount){
  //     this.balance += depositAmount;
  //   }
  // };

// atmApp.prototype.render = function(){
//   var cBal = document.createElement('h3');
//   cBal.innerHTML = checking.balance;
//   var sBal = document.createElement('h3');
//   sBal = document.createElement('h3');
//   sBal.innerHTML = savings.balance;
//   return this;
// }


window.onload = function(){

  var checkingInput = document.getElementById('checking-field');
  var checkingWithdrawButton = document.getElementById('checking-withdraw-button');
  var checkingDepositButton = document.getElementById('checking-deposit-button');

  var savingsInput = document.getElementById('savings-field');
  var savingsWithdrawButton = document.getElementById('savings-withdraw-button');
  var savingsDepositButton = document.getElementById('savings-deposit-button');

  checkingWithdrawButton.addEventListener('click', function(){
    checking.withdraw(checkingInput.value);
  checkingInput.value = "";
  });
  checkingDepositButton.addEventListener('click', function(){
    checking.deposit.(checkingInput.value);
  checkingInput.value = "";
  });

  savingsWithdrawButton.addEventListener('click', function(){
    savings.withdraw(savingsInput.value);
  savingsInput.value = "";
  });
  savingsDepositButton.addEventListener('click', function(){
    savings.deposit(savingsInput.value);
  savingsInput.value = "";
  });
};
