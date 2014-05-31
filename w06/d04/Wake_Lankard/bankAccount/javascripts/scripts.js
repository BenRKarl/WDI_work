function Account(accountName){
  this.accountName = accountName;
  this.balance = 0;

  this.depositButton = document.getElementById(accountName + '-deposit');
  this.withdrawalButton = document.getElementById(accountName + '-withdrawal');
  this.balanceField = document.getElementById(accountName + '-balance');
  this.amountEntryField = document.getElementById(accountName + '-delta');
  this.transferFromButton = document.getElementById('transfer-from-' + accountName);
  
  
}

Account.prototype = {

  deposit: function(element, amount){
    if(amount > 0){
      this.balance = this.balance + amount;
      this.update();
    }
    if (this.balance == 0){
      element.parentNode.style.backgroundColor = "red";
    }
    else {
      element.parentNode.style.backgroundColor = "grey";

    }
    
  },

  withdrawal: function(element, amount){
    if(amount > 0){
      if (this.balance - amount >= 0){
        this.balance = this.balance - amount;
        this.update();
      }
     // if (element.id == "checking-withdrawal" && this.balance < 0){
      if (this.balance == 0){
        element.parentNode.style.backgroundColor = "red";
      }
      else {
        element.parentNode.style.backgroundColor = "grey";

      }
      //}
      
    }
  },

  transfer: function(amount, destination){
    if(amount > 0){
      this.balance = this.balance - amount;
      destination.balance = destination.balance + amount;
      this.update();
      destination.update();
    }
  },

  update: function(){
    this.balanceField.value = this.balance;
    this.amountEntryField.value = "";
    this.balanceField.innerHTML = this.balance;
  }
  
}

window.onload = function(){
  var savingsAccount = new Account('savings');
  var checkingAccount = new Account('checking');

  checkingAccount.depositButton.addEventListener('click', function(){
    var amount = parseInt(checkingAccount.amountEntryField.value);
    checkingAccount.deposit(this, amount);
  })

  checkingAccount.withdrawalButton.addEventListener('click', function(){
    var amount = parseInt(checkingAccount.amountEntryField.value);
    checkingAccount.withdrawal(this, amount);
  })

  checkingAccount.transferFromButton.addEventListener('click', function(){
    var amount = parseInt(checkingAccount.amountEntryField.value);
    checkingAccount.transfer(amount, savingsAccount);
  })

  savingsAccount.depositButton.addEventListener('click', function(){
    var amount = parseInt(savingsAccount.amountEntryField.value);
    savingsAccount.deposit(this, amount);
  })

  savingsAccount.withdrawalButton.addEventListener('click', function(){
    var amount = parseInt(savingsAccount.amountEntryField.value);
    savingsAccount.withdrawal(this, amount);
  })

  savingsAccount.transferFromButton.addEventListener('click', function(){
    var amount = parseInt(savingsAccount.amountEntryField.value);
    savingsAccount.transfer(amount, checkingAccount);
  })





}

