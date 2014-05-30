function BankAccount(balance){
	this.balance = balance;
}
var account = []

var BankAccount = {
	makeDeposit: function(deposit){
		account.push(deposit);
	}
	makeWithdrawal: function(withdrawal){
		if withdrawal > this.balance {
			console.log("There is not enough money in your account to withdraw this amount.");
		}
		else
			account.splice(i, withdrawal);
	}
}

