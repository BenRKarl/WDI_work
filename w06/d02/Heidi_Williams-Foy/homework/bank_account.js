function BankAccount(balance){
	this.balance = balance;
}

BankAccount.prototype = {
  makeDeposit: function(deposit) {
  	this.balance = this.balance + deposit;
  	return this.balance;
  },
  makeWithdrawal: function(withdrawal) {
  	if ( (this.balance - withdrawal ) >= 0) {
	    this.balance = this.balance - withdrawal;
	  	return this.balance;
	  } else {
	  	console.log("Insufficient funds");
	  }
  }
}