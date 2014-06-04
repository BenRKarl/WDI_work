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
    var account = document.getElementById('account_form').account.value;
    return account;
  },

  getDeposit: function() {
    var input = document.getElementById('deposit').value;
    if (input === '') { input = '0'; }
    var amount = parseFloat(input);
    return amount;
  },

  getWithdrawal: function() {
    var input = document.getElementById('withdrawal').value;
    if (input === '') { input = '0'; }
    var amount = parseInt(input);
    return amount;      
  },

  updateBal: function(account, newBal) {
    var account_id =  account + '_bal' 
    var balance = document.getElementById(account_id);  
    balance.innerHTML = newBal.toFixed(2).toString();            
  },

  transact: function(account, deposit, withdrawal) {
    var error = document.getElementById('error'); 
    var balance = 0;        
    if (account === 'checking') {
      balance = atmApp.checkingBal();
    } else if (account === 'saving') {
      balance = atmApp.savingBal();
    } else {
      var message = document.createTextNode('Please choose an account. ')
      error.appendChild(message);
    }
    
    balance = balance + deposit - withdrawal;
    if (withdrawal % 10 != 0) {
      error.innerHTML = 'Cannot withdraw this amount. See note*.'     
    } else if (withdrawal > atmApp.checkingBal() + atmApp.savingBal()) {
      error.innerHTML = 'Cannot perform transaction. Withdrawal amount is higher than your combined balance.';
    } else if (account === 'saving' && balance < 0) {       
      error.innerHTML = 'Cannot perform transaction. Withdrawal amount is higher than your savings balance.'; 
    } else if (account === 'checking' && balance < 0) {
      var newSavingBal = atmApp.transact('saving', balance, 0);
      atmApp.updateBal('saving', newSavingBal);
      return 0;
    } else {
      return balance;         
    }   
  },

};

window.onload = function() {
  var buttonUpdate = document.getElementById('update_bal');


  buttonUpdate.addEventListener('click', function(e) {
    e.preventDefault();   
    var account = atmApp.getAccount();

    var withdrawal = atmApp.getWithdrawal();
    var deposit = atmApp.getDeposit();

    newBal = atmApp.transact(account, deposit, withdrawal);
    atmApp.updateBal(account, newBal);

    if (atmApp.checkingBal() <= 0) {
      document.getElementById('checking_bal').style.backgroundColor = 'red';
    } else if (atmApp.savingBal() < 1) {
      document.getElementById('saving_bal').style.backgroundColor = 'red';  
    } 
  }); // button close

};
