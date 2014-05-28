function BankAccount (balance){
  this.balance = balance;
}

BankAccount.prototype = {
  makeDeposit: function(deposit){
    balance = this.balance + deposit
    return balance
    balance = this.balance
  }
}

var kristen = new BankAccount(100)
