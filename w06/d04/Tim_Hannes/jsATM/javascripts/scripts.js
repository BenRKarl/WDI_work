console.log('Hey there, user.')

var mySavingsAccount = {
  currentBalance: function(amount){
    this.amount = amount
    this.el = undefined
  },

  showBalance: function(){
    return document.getElementById('savings-current-balance')
  },

  makeDeposit: function(amount){
    var balance = new this.currentBalance(amount);
    this.showBalance().value(balance.parseFloat());
  },

  makeWithdrawal: function(amount){
    var balance = new this.currentBalance(amount);
    this.showBalance().value(balance.parseFloat());
  }
};


var myCheckingAccount = {
   currentBalance: function(amount){
    this.amount = amount
    this.el = undefined
  },

  showBalance: function(){
    return document.getElementById('checking-current-balance')
  },

  makeDeposit: function(amount){
    var balance = new this.currentBalance(amount);
    this.showBalance().value(balance.parseFloat());
  },

  makeWithdrawal: function(amount){
    var balance = new this.currentBalance(amount);
    this.showBalance().value(balance.parseFloat());
  }
};


mySavingsAccount.currentBalance.prototype.value = function(){

};

myCheckingAccount.currentBalance.prototype.value = function(){

};

window.onload = function(){
  var depositButton = document.getElementById('submit-savings-deposit');
  var depositAmount = document.getElementById('savings-deposit');
  var withdrawalButton = document.getElementById('submit-savings-withdrawal');
  var withdrawalAmount = document.getElementById('savings-withdrawal');
  depositButton.addEventListener('click', function(){
    mySavingsAccount.makeDeposit(depositAmount.value);
  });
  withdrawalButton.addEventListener('click', function(){
    mySavingsAccount.makeWithdrawal(withdrawalAmount.value);
  });
};

