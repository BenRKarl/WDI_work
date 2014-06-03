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
  //this.el = document.getElementById(accounttype + "-account");
};

BankAccount.prototype = {

  displayAccountHolder: function(){
    var displayAccountHolderField = document.getElementById("account-holder-name");
    displayAccountHolderField.innerHTML = this.accountHolderName.value;
  },

  displayBalance: function(){
    var displayBalanceField = document.getElementById(this.accounttype + "-account-balance");
    displayBalanceField.innerHTML = this.balance;
  },

  makeDeposit: function(amount){
    this.balance = (parseFloat(this.balance) + parseFloat(amount)).toFixed(2);
    this.displayBalance();
  },
  
  makeWithdrawal: function(amount, otherAccount){
    if ((parseFloat(this.balance) - parseFloat(amount)).toFixed(2) >= 0){
      this.balance = (parseFloat(this.balance) - parseFloat(amount)).toFixed(2);
      this.displayBalance();     
    } else {
      if ( ( (parseFloat(this.balance) + parseFloat(otherAccount.balance)) - parseFloat(amount) ).toFixed(2) >= 0) {

        otherAccount.balance = (parseFloat(otherAccount.balance) - ( parseFloat(amount) - parseFloat(this.balance) )).toFixed(2);
        otherAccount.displayBalance();

        this.balance = parseFloat(0).toFixed(2);
        this.displayBalance();
      }
    }
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
    checkingAccountAmount.value = '';   
  });

  var buttonCheckingAccountWithdrawal = document.getElementById('checking-account-withdrawal');
  buttonCheckingAccountWithdrawal.addEventListener('click', function(){ 
    newCheckingAccount.makeWithdrawal(checkingAccountAmount.value, newSavingsAccount);
    checkingAccountAmount.value = '';
  });

  ///////////   Savings Account   //////////////
  var savingsAccountAmount = document.getElementById('savings-account-amount');
  
  var buttonSavingsAccountDeposit = document.getElementById('savings-account-deposit');
  buttonSavingsAccountDeposit.addEventListener('click', function(){
    newSavingsAccount.makeDeposit(savingsAccountAmount.value);
    savingsAccountAmount.value = '';
  });

  var buttonSavingsAccountWithdrawal = document.getElementById('savings-account-withdrawal');
  buttonSavingsAccountWithdrawal.addEventListener('click', function(){
    newSavingsAccount.makeWithdrawal(savingsAccountAmount.value, newCheckingAccount);
    savingsAccountAmount.value = '';
  });

}



