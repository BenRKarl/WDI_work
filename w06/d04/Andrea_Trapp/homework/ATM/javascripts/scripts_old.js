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


// var newBankAccount = new BankAccount(0);
// newBankAccount.makeDeposit(100);
// newBankAccount.makeWithdrawal(150)


function BankAccount(balance) {
  this.balance = balance;
  this.el = undefined;
};

BankAccount.prototype = {

  getBankAccount: function(){
    return this;
  },
  
  makeDeposit: function(amount){
    return (this.balance += amount);
  },
  
  makeWithdrawal: function(amount){
    if ((this.balance - amount) >= 0){
       return (this.balance -= amount);
    } 
  },

  render: function(){
    var divItem = document.createElement('div');
    divItem.style.backgroundColor = "lightblue";  
    divItem.innerHTML = this.balance;
    this.el = divItem;
    return this;
  }
}



/////////////////////////////////////////////////////////////////////////


var atmApp = {

  createBankAccounts: function(accountHolderName){
    // accountHolderName is not being used in this moment !!    
    var newCheckingAccount = new BankAccount(0);    




newCheckingAccount.makeDeposit(100);
newCheckingAccount.makeWithdrawal(ß50)

    document.getElementById('checking-account-balance').appendChild(newCheckingAccount.render().el);


    var newSavingsAccount = new BankAccount(0);
    this.showBalanceSavingsAccount(newSavingsAccount);
  },

  showBalanceSavingsAccount: function(newSavingsAccount){
    this.savingsAccountBalance().appendChild(newSavingsAccount.render().el);
  },
  savingsAccountBalance: function(){
    return document.getElementById('savings-account-balance');
  },

  

  depositCheckingAccount: function(amount){
  
    // // var myCheckingAccount = this.CheckingAccount;
    // var myCheckingAccount = new BankAccount(0);
    newCheckingAccount.makeDeposit(amount);
    document.getElementById('checking-account-balance').appendChild(newCheckingAccount.render().el);


    
    // this.showBalanceCheckingAccount(checkingAccount);
  },









  withdrawCheckingAccount: function(amount){
    // this.makeWithdrawal(amount);
    // this.showBalanceCheckingAccount(newCheckingAccount);
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



