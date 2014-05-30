
// ##Part 3
// ###Bank Account
// - Create a bank account object
//   - Include attributes:
//     - balance
//   - Include functions:
//     - `makeDeposit`
//     - `makeWithdrawal`
//   - Notes:
//     - Make sure the balance in an account can't go negative. If a user tries to withdraw more money than exists in the account, ignore the transaction.


function bankAccount(balance){
  this.balance = balance;
}

bankAccount.prototype = {
  makeDeposit: function(amount){
    this.balance += amount
  },
  makeWithdrawal: function(amount){
    if (this.balance - amount >= 0) this.balance -= amount
  }
}

myAccount = new bankAccount(100)
