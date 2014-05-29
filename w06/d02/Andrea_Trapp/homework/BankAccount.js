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


function BankAccount(balance) {
    this.balance = balance;
}

BankAccount.prototype = {
  makeDeposit: function(amount){
    return (this.balance += amount);
  },
  makeWithdrawal: function(amount){
    if ((this.balance - amount) >= 0){
       return (this.balance -= amount);
    }
  }
}

var newBankAccount = new BankAccount(0);
newBankAccount.makeDeposit(100);
newBankAccount.makeWithdrawal(150)

