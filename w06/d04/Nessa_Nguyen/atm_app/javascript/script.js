var atmApp = {
  checkingBal: function() {
    var bal = document.getElementById('checking_bal').innerHTML
    ;
    return parseFloat(bal);
  },   

  savingBal: function() {
    var bal = document.getElementById('saving_bal').innerHTML;
    return parseFloat(bal);
  },

  getAccount: function() {
    var account = document.getElementById('account').account.value;
    return account;
  },

  getAmount: function() {
    var input = document.getElementById('amount').value;
    var amount = parseFloat(input);
    return amount;
  },

  updateBal: function(account, newBal) {    
    var account_id =  account + '_bal' 
    var balance = document.getElementById(account_id);  
    balance.innerHTML = newBal.toString();
  },

  withdraw: function(account, amount) {
    if (account === 'checking') {
      balance = atmApp.checkingBal();
    } else {
      balance = atmApp.savingBal();
    }
    return balance - amount;
  },

  deposit: function(account, amount) {
    if (account === 'checking') {
      balance = atmApp.checkingBal();
    } else {
      balance = atmApp.savingBal();
    }
    return balance + amount;
  }
}

window.onload = function() {
  var amount = atmApp.getAmount();
  var account = atmApp.getAccount();
  var newBal = 0;

  var buttonWithdraw = document.getElementById('withdraw');
  buttonWithdraw.addEventListener('click', function(e) {
    e.preventDefault();
    newBal = atmApp.withdraw(account, amount);

  });

  var buttonDeposit = document.getElementById('deposit');
  buttonDeposit.addEventListener('click', function(e) {
    e.preventDefault();
    newBal = atmApp.deposit(account, amount);
  });    
  
  atmApp.updateBal(account, newBal); 
  
  if (atmApp.checkingBal === 0) {
    document.getElementById('checking_bal').style.backgroundColor = 'red';
  } else if (atmApp.savingBal === 0) {
    document.getElementById('saving_bal').style.backgroundColor = 'red';
  }
}
