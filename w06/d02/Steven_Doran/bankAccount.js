function BankAccount(balance) {
  this.balance = balance;

}

BankAccount.prototype = {
  makeDeposit: function (amount) {
    return (this.balance += amount);
  },
  makeWithdrawal: function (amount) {
    if ((this.balance -= amount) >= 0) {
      return (this.balance -= amount);
    }
    return console.log("You're too poor. Go away.");
  }
};

var newAccount = new BankAccount(100);
newAccount.makeDeposit(50);
newAccount.makeWithdrawal(140);
newAccount.makeWithdrawal(300);