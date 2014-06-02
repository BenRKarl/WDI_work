var BankAccount = function(name) {
  this.name = name;
  this.balance = 0;
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
      if (this.linkedAccount instanceof BankAccount) {
        var excess = withdrawal - this.balance;
        if (this.linkedAccount.balance >= excess) {
          this.balance = 0;
          this.linkedAccount.makeWithdrawal(excess);
          return this.balance;
        }
      }
	  	console.log("Insufficient funds");
	  }
  },
  addOverdraftProtection: function(linkedAccount) {
    this.linkedAccount = linkedAccount;
  }
}

var deposit = function(account, target) {
  var amtField = document.getElementById("dollarAmt");
  var amt = parseFloat(amtField.value);
  account.makeDeposit(amt);
  amtField.value = "";
  document.getElementById(target).innerHTML = account.balance;

  updateBal(account, target);
  return false;
}

var withdraw = function(account, target) {
  var amtField = document.getElementById("dollarAmt");
  var amt = parseFloat(amtField.value);
  account.makeWithdrawal(amt);
  amtField.value = "";

  updateBal(account, target);
  if (account.linkedAccount instanceof BankAccount) {
    updateBal(account.linkedAccount, "savingsBal");
  }
  return false;
}

var updateBal = function(account, target) {
  document.getElementById(target).innerHTML = account.balance;
  if (account.balance > 0) {
    document.getElementById(target).style.backgroundColor = "#CCC";
  } else {
    document.getElementById(target).style.backgroundColor = "red";
  }
}

var checking = new BankAccount("Checking");
var savings = new BankAccount("Savings");
checking.addOverdraftProtection(savings);