function BankAccount(balance){
  this.balance = balance
}

BankAccount.prototype = {
  makeDeposit: function(amount) {
    this.balance = this.balance + amount;
    console.log("You deposited $"+amount+" your balance is now $"+this.balance);
  },

  makeWithdrawal: function(amount) {
    if (this.balance - amount < 0) {
      console.log("You do not have enough funds in your balance.");
    } else {
      this.balance = this.balance - amount;
      console.log("You withdrew $"+amount+" your balance is now $"+this.balance);
    }
  }
}

var myBank = new BankAccount(100);
myBank.makeDeposit(50);
myBank.makeWithdrawal(151);
