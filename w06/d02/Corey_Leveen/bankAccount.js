function bankAccount (balance){
  this.balance = balance;
}

bankAccount.prototype = {

  makeDeposit: function(depositAmount){
    this.balance += depositAmount;
    console.log('Depositing $' + depositAmount + ' to your account.');
    console.log('Your new balance is $' + this.balance + '.');
  },

  makeWithdrawal: function(withdrawalAmount){
    if (withdrawalAmount <= this.balance){
      this.balance -= withdrawalAmount;
      console.log('Withdrawing $' + withdrawalAmount + ' from your account.');
      console.log('Your new balance is $' + this.balance + '.');
    }
    else {
      console.log('Insufficient funds. You only have $' + this.balance + ' in your account.');
    }
  }
}

var myAccount = new bankAccount(280000);
