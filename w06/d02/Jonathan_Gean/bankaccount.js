function BankAccount (balance){
  this.balance = balance;

}

BankAccount.prototype = {
  makeDeposit: function(cashAmount){
    this.balance = this.balance + cashAmount;
    return this.balance;
  },
  makeWithdrawal: function(cashAmount){
      if (cashAmount < this.balance)
        {this.balance = this.balance - cashAmount;
      return this.balance}
      else
        {return "Sorry"}
  }
}
