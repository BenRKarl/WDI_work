// var bankAccount = {
//   balance: 1000
// }

function BankAccount(balance) {
  this.balance = balance;
}

BankAccount.prototype = {
  makeDeposit: function (cash) {
    newBalance = this.balance + cash;
    this.balance = newBalance
    console.log("Your balance is now $" + newBalance);
  },

  makeWithdrawal: function (cash) {
    if (cash > this.balance) {
      console.log("Sorry you're short on money...")
    } else {
      var newBalance = this.balance - cash
      this.balance = newBalance
      console.log("Your balance is now $" + newBalance)
    }
  }
}


var chase = new BankAccount(1000)
