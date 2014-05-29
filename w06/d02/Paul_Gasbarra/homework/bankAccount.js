

function BankAccount(balance){
  this.balance = balance;
}

BankAccount.prototype = {
  makeDeposit: function(amount){
    this.balance += amount;
    console.log("After a deposit of " + amount + ", your balances is now: " + this.balance);
  },

  makeWithdrawal: function(amount){
    if (amount <= this.balance){
      this.balance -= amount;
      console.log("After a withdraw of " + amount + ", your balances is now: " + this.balance);
    }
  }
}
