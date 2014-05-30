var bankAccount = function(accountNumber, balance) {
  this.accountNumber = accountNumber;
  this.balance       = balance;
};

bankAccount.prototype = {
  makeDeposit: function(amount) {
    this.balance += amount;
      console.log("Your new balance is " + this.balance + ".");
  },
  makeWithdrawl: function(amount) {
    if (amount > this.balance) {
      console.log("You do not have sufficient funds, please try a lower withdrawl.");
    }
    else if (amount === this.balance) {
      console.log("This withdrawl is your entire account balance.");
    }
    else
    {
    this.balance -= amount
      console.log("Your new balance is" + " " + this.balance + ".");
    }
  }
};

var boa = new bankAccount('1234', 1000);
