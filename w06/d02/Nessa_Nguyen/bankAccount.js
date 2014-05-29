function bankAccount(balance) {
  this.balance = balance;
}


bankAccount.prototype = {
  makeDeposit: function(amount) {
    this.balance = this.balance + amount;
    console.log('Your new balance is ' + this.balance);
  },

  makeWithdrawal: function(amount) {
    this.balance = this.balance - amount;
    if (this.balance > 0) {
      console.log('Your new balance is ' + this.balance); 
    } else {
      console.log('You can not withdraw more than the balance, dummy');
    }        
  }
};  

var nessa_bank = new bankAccount(899);
nessa_bank.makeDeposit(90);
nessa_bank.makeWithdrawal(204);

