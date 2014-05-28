function BankAccount (balance){
  this.balance = balance;
}

BankAccount.prototype = {
  makeDeposit: function(deposit){
    this.balance += deposit;
    return this.balance;
  }
}

var kristen = new BankAccount(100)
