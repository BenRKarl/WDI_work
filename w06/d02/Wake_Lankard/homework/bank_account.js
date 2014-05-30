function BankAccount(){
  this.balance = 0;
}

BankAccount.prototype = {
  makeDeposit: function(deposit){
    this.balance = this.balance + deposit;
  },
  makeWithdrawal: function(withdrawal){
    if (this.balance - withdrawal >= 0){
      this.balance = this.balance - withdrawal;
    }
  }  
}
var myAccount = new BankAccount();

myAccount.makeDeposit(100);
myAccount.makeWithdrawal(50);
myAccount.makeWithdrawal(100);

console.log(myAccount.balance);