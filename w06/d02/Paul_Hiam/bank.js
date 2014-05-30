function BankAccount(balance) {
  this.balance = balance;
}

BankAccount.prototype = {
  makeDeposit: function(deposit) {
    this.balance = this.balance + deposit;
  },
  makeWithdrawal: function(withdrawal) {
    if (withdrawal > this.balance) {
      console.log('Balance is:  '+this.balance+'.  Please withdraw up to this amount.');
    } else {
      this.balance = this.balance - withdrawal;
    }
  }
}

checking = new BankAccount(100);

console.log(checking.balance);
checking.makeDeposit(200);
console.log(checking.balance);
checking.makeWithdrawal(250);
console.log(checking.balance);