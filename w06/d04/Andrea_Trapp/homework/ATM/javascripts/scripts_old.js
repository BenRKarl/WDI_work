// Bank Account

// Create a bank account object

// Include attributes:
// balance

// Include functions:
// makeDeposit
// makeWithdrawal

// Notes:
// Make sure the balance in an account can't go negative. 
// If a user tries to withdraw more money than exists in 
// the account, ignore the transaction.


// function BankAccount(balance) {
//     this.balance = balance;
// }

// BankAccount.prototype = {
//   makeDeposit: function(amount){
//     return (this.balance += amount);
//   },
//   makeWithdrawal: function(amount){
//     if ((this.balance - amount) >= 0){
//        return (this.balance -= amount);
//     } 
//   }
// }

// var newBankAccount = new BankAccount(0);
// newBankAccount.makeDeposit(100);
// newBankAccount.makeWithdrawal(150)


/////////////////////////////////////////////////////////////////////////


function CheckingAccount(accountHolderName){
  this.accountHolderName = accountHolderName;
  this.balance = 0;
  this.el = undefined;
};

function SavingsAccount(accountHolderName){
  this.accountHolderName = accountHolderName;
  this.balance = 0;
  this.el = undefined;
};

// CheckingAccount.prototype = {
//   makeDeposit: function(amount){
//     return (this.balance += amount);
//   },
//   makeWithdrawal: function(amount){
//     if ((this.balance - amount) >= 0){
//        return (this.balance -= amount);
//     } 
//   }
// };

CheckingAccount.prototype.render = function(){
  var divItem = document.createElement('div');
  divItem.style.backgroundColor = "green";  
  divItem.innerHTML = this.balance;
  this.el = divItem;
  return this;
};

CheckingAccount.prototype.makeDeposit = function(amount){
  return (this.balance += amount);
};

CheckingAccount.prototype.makeWithdrawal = function(amount){
  if ((this.balance - amount) >= 0){
     return (this.balance -= amount);
  }   
};

// SavingsAccount.prototype = {
//   makeDeposit: function(amount){
//     return (this.balance += amount);
//   },
//   makeWithdrawal: function(amount){
//     if ((this.balance - amount) >= 0){
//        return (this.balance -= amount);
//     } 
//   }
// };

SavingsAccount.prototype.render = function(){
  var divItem = document.createElement('div');
  divItem.style.backgroundColor = "yellow";  
  divItem.innerHTML = this.balance;
  this.el = divItem;
  return this;
};
















var atmApp = {

  createBankAccounts: function(accountHolderName){
    var newCheckingAccount = new CheckingAccount(accountHolderName);
    this.showBalanceCheckingAccount(newCheckingAccount);

    var newSavingsAccount = new SavingsAccount(accountHolderName);
    this.showBalanceSavingsAccount(newSavingsAccount);
  },

  showBalanceCheckingAccount: function(newCheckingAccount){
    this.checkingAccountBalance().appendChild(newCheckingAccount.render().el);
  },

  showBalanceSavingsAccount: function(newSavingsAccount){
    this.savingsAccountBalance().appendChild(newSavingsAccount.render().el);
  },

  checkingAccountBalance: function(){
    return document.getElementById('checking-account-balance');
  },

  savingsAccountBalance: function(){
    return document.getElementById('savings-account-balance');
  },








  depositCheckingAccount: function(amount){
  
    var checkingAccount = this.CheckingAccount;
    //this.makeDeposit(amount);

    
    this.showBalanceCheckingAccount(checkingAccount);
  },









  withdrawCheckingAccount: function(amount){
    this.makeWithdrawal(amount);
    this.showBalanceCheckingAccount(newCheckingAccount);
  },

  depositSavingsAccount: function(amount){

  },

  withdrawSavingsAccount: function(amount){

  },


};














window.onload = function(){
  var accountHolderName = document.getElementById('account-holder-name');

  var buttonCreateBankAccounts = document.getElementById('create-bank-accounts');
  buttonCreateBankAccounts.addEventListener('click', function(){
    atmApp.createBankAccounts(accountHolderName.value);
  });




  var checkingAccountAmount = document.getElementById('checking-account-amount');

  var buttonCheckingAccountDeposit = document.getElementById('checking-account-deposit');
  buttonCheckingAccountDeposit.addEventListener('click', function(){
    atmApp.depositCheckingAccount(checkingAccountAmount.value);
  });





  var buttonCheckingAccountWithdrawal = document.getElementById('checking-account-withdrawal');
  buttonCheckingAccountWithdrawal.addEventListener('click', function(){
    atmApp.withdrawCheckingAccount(checkingAccountAmount.value);
  });

  var savingsAccountAmount = document.getElementById('savings-account-amount');

  var buttonSavingsAccountDeposit = document.getElementById('savings-account-deposit');
  buttonSavingsAccountDeposit.addEventListener('click', function(){
    atmApp.depositSavingsAccount(savingsAccountAmount.value);
  });

  var buttonSavingsAccountWithdrawal = document.getElementById('savings-account-withdrawal');
  buttonSavingsAccountWithdrawal.addEventListener('click', function(){
    atmApp.withdrawSavingsAccount(savingsAccountAmount.value);
  });

}



