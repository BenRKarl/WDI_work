var BankAccount = function BankAccount (balance){
  this.balance = balance;
  this.balanceEl = document.getElementById('account-balance');
};

BankAccount.prototype = {
  render: function(balance){
    this.balanceEl.innerHTML = "Account Balance: $" + balance;
  },

  // currentBalance: function(){
  //   return this.balance;
  // },

  accountBalance: function(){
    return document.getElementById('account-balance');
  },

  startBalance: function(balance){
    this.accountBalance().appendChild(render(this.balance).el);
  },

  // hasExistingBalance: function(){
  //   return this.accountBalance().children.length != 0;
  // },

  accountDeposit: function(balance){
    var newBalance = this.balance + balance;
    this.balance = newBalance;
    this.render(newBalance);
  },

  accountWithdrawal: function(balance){
    var newBalance = this.balance - balance;
    this.balance = newBalance;
    this.render(newBalance);
  }
};

window.onload = function(){
  var account = new BankAccount(0);
  var depositButton = document.getElementById('deposit-button');
  var withdrawalButton = document.getElementById('withdrawal-button');
  var userInput = document.getElementById('account-input-field');

  depositButton.addEventListener('click', function(){
    account.accountDeposit(parseInt(userInput.value));
  });

  withdrawalButton.addEventListener('click', function(){
    account.accountWithdrawal(parseInt(userInput.value));
  });
};
