function BankAccount(){
  this.balance = 0;
}

BankAccount.prototype = {
  makeDeposit: function(deposit){
    this.balance = this.balance + deposit
  },
  makeWithdrawal: function(withdrawal){
    if (this.balance - withdrawal >=0 ) {
      this.balance = this.balance - withdrawal;
    }
  }
}

var myAccount = new BankAccount();

myAccount.makeDeposit(10000);
myAccount.makeWithdrawal(2000);

console.log(myAccount.balance);
