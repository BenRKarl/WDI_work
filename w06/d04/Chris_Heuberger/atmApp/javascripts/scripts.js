var atmApp = {

  BankAccount: function(balance){
    balance = parseInt(balance);
    this.balance = balance;
    this.el = undefined;
  },
  // deposit: function(){
  //   return document.getElementById('deposit');
  // },
  // withdrawl: function(){
  //   return document.getElementById('withdrawal');
  // },
  // transaction: function(amount, balance){
  //   amount = parseInt(amount);
  //   var currentBalance = document.getElementById('balance').el;
  //   var newAmount = (amount + balance);
  //   var newBalance = new this.BankAccount(newAmount);
  //   newDepositBalance().replaceChild(currentBalance, newBalance);
  // }

};

atmApp.BankAccount.prototype = {

  makeDeposit: function(amount){
    this.balance = this.balance + amount;
  },

  makeWithdrawal: function(amount){
    if (this.balance - amount > 0) {
      this.balance = this.balance - amount;
    } else {
    }
  }
};
