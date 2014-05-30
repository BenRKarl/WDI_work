function BankAccount(balance) {
  this.balance = balance;
}

BankAccount.prototype = {
  deposit: function(cashIn) {
    this.balance += cashIn;
    return this.balance;
  },
  withdraw: function(cashOut) {
    if (this.balance > cashOut) {
      this.balance -= cashOut;
      return this.balance;
    }
    else {
      console.log("Your balance is too low");
      return this.balance;
    }
  }
}

var chase = new BankAccount(3000);

chase.deposit(1000);
chase.withdraw(350);
