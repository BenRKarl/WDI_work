function Account(accountName){
  this.accountName = accountName;
  this.balance = 0;
  this.linkedAccount = 0;

  this.depositButton = document.getElementById(accountName + '-deposit');
  this.withdrawalButton = document.getElementById(accountName + '-withdrawal');
  this.balanceField = document.getElementById(accountName + '-balance');
  this.amountEntryField = document.getElementById(accountName + '-change');
  this.transferFromButton = document.getElementById('transfer-from-' + accountName);


}

Account.prototype = {
  linkAccount: function(otherAccount){
    this.linkedAccount = otherAccount;
  },


  deposit: function(element, amount){
    if(amount > 0){
      this.balance = this.balance + amount;
      this.update();
    }
  },

  withdrawal: function(element, amount){
    if(amount > 0){
      if (this.balance - amount >= 0){
        this.balance = this.balance - amount;
        this.update();
      }
      else if (element.id == "checking-withdrawal" &&

            (this.linkedAccount.balance + this.balance) >= amount){
        this.linkedAccount.balance = this.balance + this.linkedAccount.balance - amount;
        this.balance = 0;
        this.update();
        this.linkedAccount.update();
      }
    }
  },

  transfer: function(amount, destination){
    if(amount > 0){
      if(this.balance - amount >= 0 ){
        this.balance = this.balance - amount;
        destination.balance = destination.balance + amount;
        this.update();
        destination.update();
      }
    }
  },

  update: function(){
    this.balanceField.value = this.balance;
    this.amountEntryField.value = "";
    this.balanceField.innerHTML = this.balance;
    var accountDiv = document.getElementById(this.accountName + '-account');

    if (this.balance == 0){
      accountDiv.style.backgroundColor = "red";
    }
    else {
      accountDiv.style.backgroundColor = "lightgray";

    }
  }

};

window.onload = function(){
  var savingsAccount = new Account('savings');
  var checkingAccount = new Account('checking');
  checkingAccount.linkAccount(savingsAccount);

  checkingAccount.depositButton.addEventListener('click', function(){
    var amount = parseInt(checkingAccount.amountEntryField.value);
    checkingAccount.deposit(this, amount);
  });

  checkingAccount.withdrawalButton.addEventListener('click', function(){
    var amount = parseInt(checkingAccount.amountEntryField.value);
    checkingAccount.withdrawal(this, amount);
  });

  checkingAccount.transferFromButton.addEventListener('click', function(){
    var amount = parseInt(checkingAccount.amountEntryField.value);
    checkingAccount.transfer(amount, savingsAccount);
  });

  savingsAccount.depositButton.addEventListener('click', function(){
    var amount = parseInt(savingsAccount.amountEntryField.value);
    savingsAccount.deposit(this, amount);
  });

  savingsAccount.withdrawalButton.addEventListener('click', function(){
    var amount = parseInt(savingsAccount.amountEntryField.value);
    savingsAccount.withdrawal(this, amount);
  });

  savingsAccount.transferFromButton.addEventListener('click', function(){
    var amount = parseInt(savingsAccount.amountEntryField.value);
    savingsAccount.transfer(amount, checkingAccount);
  });

};
