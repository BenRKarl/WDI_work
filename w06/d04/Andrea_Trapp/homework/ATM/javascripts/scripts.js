// Bank Account

// Create a bank account object

// Notes:
// Make sure the balance in an account can't go negative. 
// If a user tries to withdraw more money than exists in 
// the account, ignore the transaction.


function BankAccount(accountHolderName, accounttype) {
  this.accountHolderName = accountHolderName;
  this.accounttype = accounttype;
  this.balance = 0;   
  this.el = document.getElementById(accounttype + "-account");
};

BankAccount.prototype = {

  displayAccountHolder: function(){
    var displayAccountHolderField = document.getElementById("account-holder-name");
    displayAccountHolderField.innerHTML = this.accountHolderName;
  },

  displayBalance: function(){
    var displayBalanceField = document.getElementById(this.accounttype + "-account-balance");
    displayBalanceField.innerHTML = this.balance;
  },

  makeDeposit: function(amount){
    this.balance = (parseFloat(this.balance) + parseFloat(amount)).toFixed(2);
    return this.balance;
  },
  
  makeWithdrawal: function(amount){
    if ((parseFloat(this.balance) - parseFloat(amount)).toFixed(2) >= 0){
      this.balance = (parseFloat(this.balance) - parseFloat(amount)).toFixed(2);
      return this.balance;
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


//////////////////   window.onload   ///////////////////////////////

window.onload = function(){
  var accountHolderName = document.getElementById('account-holder-name-input');

  var buttonCreateBankAccounts = document.getElementById('create-bank-accounts');
  
  buttonCreateBankAccounts.addEventListener('click', function(){  
      newCheckingAccount = new BankAccount(accountHolderName, "checking"); 
      newSavingsAccount = new BankAccount(accountHolderName, "savings");
      newCheckingAccount.displayAccountHolder();
      newCheckingAccount.displayBalance();
      newSavingsAccount.displayBalance();
  });

  //////////   Checking Account    /////////////
  var checkingAccountAmount = document.getElementById('checking-account-amount');

  var buttonCheckingAccountDeposit = document.getElementById('checking-account-deposit');
  buttonCheckingAccountDeposit.addEventListener('click', function(){    
    newCheckingAccount.makeDeposit(checkingAccountAmount.value);
    newCheckingAccount.displayBalance();
  });

  var buttonCheckingAccountWithdrawal = document.getElementById('checking-account-withdrawal');
  buttonCheckingAccountWithdrawal.addEventListener('click', function(){ 
    newCheckingAccount.makeWithdrawal(checkingAccountAmount.value);
    newCheckingAccount.displayBalance();
  });

  ///////////   Savings Account   //////////////
  var savingsAccountAmount = document.getElementById('savings-account-amount');

  var buttonSavingsAccountDeposit = document.getElementById('savings-account-deposit');
  buttonSavingsAccountDeposit.addEventListener('click', function(){
    newSavingsAccount.makeDeposit(savingsAccountAmount.value);
    newSavingsAccount.displayBalance();
  });

  var buttonSavingsAccountWithdrawal = document.getElementById('savings-account-withdrawal');
  buttonSavingsAccountWithdrawal.addEventListener('click', function(){
    newSavingsAccount.makeWithdrawal(savingsAccountAmount.value);
    newSavingsAccount.displayBalance();
  });

}



