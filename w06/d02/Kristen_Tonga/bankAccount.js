function BankAccount (balance){
  this.balance = balance;
}

BankAccount.prototype = {
  makeDeposit: function(deposit){
    this.balance += deposit;
    return this.balance;
  },

  makeWithdrawl: function(withdrawl){
    if ( this.balance - withdrawl > 0 ){
      this.balance -= withdrawl;
      var note = "Success!"
      return this.balance;
    } else {
      var note = "You do not have enough money to make that withdrawl.";
      return note;
    }

  }
}

var kristen = new BankAccount(100)
