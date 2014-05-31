var BankAccount = function BankAccount (name, balance){
  this.name = name
  this.balance = balance;
  this.balanceEl = function(){
    if (this.name === 'checking'){
      return document.getElementById('checking-account-balance');
    } else {
      return document.getElementById('savings-account-balance');
    }
  }
};

BankAccount.prototype = {
  render: function(balance){
    this.balanceEl().innerHTML = "Account Balance: $" + balance;
    if (balance < 0){
      this.balanceEl().parentElement.style.backgroundColor = 'pink';
    } else if (balance > 0){
      this.balanceEl().parentElement.style.backgroundColor = 'lightgrey'
    }
  },

  accountBalance: function(){
    return document.getElementById('account-balance');
  },

  startBalance: function(balance){
    this.accountBalance().appendChild(render(this.balance).el);
  },

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
  //checking account
  var checkingAccount = new BankAccount('checking', 0);
  checkingAccount.render(0)
  var checkingDepositButton = document.getElementById('checking-deposit-button');
  var checkingWithdrawalButton = document.getElementById('checking-withdrawal-button');
  var checkingUserInput = document.getElementById('checking-account-input-field');

  checkingDepositButton.addEventListener('click', function(){
    checkingAccount.accountDeposit(parseInt(checkingUserInput.value));
  });

  checkingWithdrawalButton.addEventListener('click', function(){
    checkingAccount.accountWithdrawal(parseInt(checkingUserInput.value));
  });
  //savings account
  var savingsAccount = new BankAccount('savings', 0);
  savingsAccount.render(0)
  var savingsDepositButton = document.getElementById('savings-deposit-button');
  var savingsWithdrawalButton = document.getElementById('savings-withdrawal-button');
  var savingsUserInput = document.getElementById('savings-account-input-field');

  savingsDepositButton.addEventListener('click', function(){
    savingsAccount.accountDeposit(parseInt(savingsUserInput.value));
  });

  savingsWithdrawalButton.addEventListener('click', function(){
    savingsAccount.accountWithdrawal(parseInt(savingsUserInput.value));
  });
};
