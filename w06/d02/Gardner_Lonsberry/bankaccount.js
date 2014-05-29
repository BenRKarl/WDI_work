function bankAccount(balance) {
  this.balance = balance;
}
  bankAccount.prototype = {
    makeDeposit: function(transaction){
      return (this.balance += transaction);
    },
    makeWithdrawal: function(transaction){
      while ((this.balance - transaction) > 0){
        return (this.balance -= transaction);
      }
  }
}

// var newAccount = new bankAccount(0);
// newAccount.makeDeposit(10000);
// newAccount.makeWithdrawal(10000);


function BankAccount(balance) {
  this.balance = balance;
}

BankAccount.prototype = {
  makeDeposit: function(transaction){
    return (this.balance += transaction);
  },

  makeWithdrawal: function(transaction) {
    if ( (this.balance - transaction) > 0){
      return (this.balance -= transaction);
    } else {
      console.log('You cannot go below your balance');
    }
  }
}