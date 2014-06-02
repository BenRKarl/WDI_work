
function BankAccount(balance, accountType) {
  this.balance = balance;
  this.accountType = accountType;
}

BankAccount.prototype = {
  makeDeposit: function(deposit) {
    this.balance = this.balance + deposit;
    message(deposit);
  },
  makeWithdrawal: function(withdrawal) {
    if (withdrawal > this.balance) {
      if (this.accountType=="savings") {
        result.innerHTML = 'Balance is:  '+this.balance+'.  Please withdraw up to this amount.';
      } else if (withdrawal > (checking.balance + savings.balance)) {
        result.innerHTML = 'Total balance in both acounts is:  ' +
                            (checking.balance+savings.balance) + '.  Please withdraw up to this amount.';

      } else {
        fromChecking = checking.balance;
        fromSavings = (withdrawal - fromChecking);
        checking.balance = 0;
        savings.balance = savings.balance - fromSavings;
        currType = 'overdraft';
        message(withdrawal, fromChecking, fromSavings);
      }
      // logic to take from savings if possible, set currType to multiWithdrawal
    } else {
      this.balance = this.balance - withdrawal;
      message(withdrawal);
    }
  }
}

function message(total, c_amount, s_amount) {
  switch(currType) {
    case 'withdrawal':
      result.innerHTML = 'Most recent transaction: '+currType+' from ' +
                         currAccount.accountType +'.  </br>Result:  Withdrew ' +
                         total +'.';
      break;
    case 'deposit':
      result.innerHTML = 'Most recent transaction: '+currType+' for ' +
                         currAccount.accountType +'.  </br>Result:  Deposited ' +
                         total +'.';
      break;
    case 'balance':
      result.innerHTML = 'Most recent transaction: '+currType+' for ' +
                         currAccount.accountType +'.  </br>Result:  ' + currAccount.balance +'.';
      break;
    case 'overdraft':
      result.innerHTML = 'Most recent transaction: '+currType+'.  Total withdrawal of '+total+'.</br>' +
                          c_amount + ' from checking and '+s_amount+' from savings';
      break;
  }
}

function resetColors(whichButtons) {
  withdrawButton.style.backgroundColor = 'gray';
  depositButton.style.backgroundColor = 'gray';
  balanceButton.style.backgroundColor = 'gray';

  if (whichButtons == 'all') {
    currAccount = undefined;
    if (checking.balance > 0) {
      checkingButton.style.backgroundColor = 'gray';
    } else {
      checkingButton.style.backgroundColor = 'darkred';
    }
    if (savings.balance > 0) {
      savingsButton.style.backgroundColor = 'gray';
    } else {
      savingsButton.style.backgroundColor = 'darkred';
    }
  }

  currType = undefined;
  amountInput.value = "";
}

window.onload = function () {
  checkingButton = document.getElementById('checking-button');
  savingsButton  = document.getElementById('savings-button');
  withdrawButton = document.getElementById('withdraw-button');
  depositButton  = document.getElementById('deposit-button');
  balanceButton  = document.getElementById('balance-button');
  amountButton  = document.getElementById('amount-button');
  amountInput  = document.getElementById('amount-input');
  resultMessage = document.getElementById('result');

  checking = new BankAccount(100, 'checking');
  savings = new BankAccount(100, 'savings');

  resetColors('all');

  checkingButton.addEventListener('click', function() {
    resetColors('all');
    currAccount = checking;
    this.style.backgroundColor = 'green';
  })

  savingsButton.addEventListener('click', function() {
    resetColors('all');
    currAccount = savings;
    this.style.backgroundColor = 'green';
  })

  withdrawButton.addEventListener('click', function() {
    resetColors('notAll');
    if (currAccount==undefined) {
      window.alert('Please Select Which Account');
    } else {
      this.style.backgroundColor = 'green';
      currType = 'withdrawal';
    }
  })

  depositButton.addEventListener('click', function() {
    resetColors('notAll');
    if (currAccount==undefined) {
      window.alert('Please Select Which Account');
    } else {
      this.style.backgroundColor = 'green';
      currType = 'deposit';
    }
  })

  balanceButton.addEventListener('click', function() {
    resetColors('notAll');
    if (currAccount==undefined) {
      window.alert('Please Select Which Account');
    } else {
      this.style.backgroundColor = 'green';
      currType = 'balance';
      message();
      resetColors('all');
    }
  })

  amountButton.addEventListener('click', function() {
    var amount = parseFloat(amountInput.value);
    if (amount>0 == false) {
      result.innerHTML = "Please enter a positive number"
    } else {
      switch(currType) {
        case 'withdrawal':
          currAccount.makeWithdrawal(amount);
          break;
        case 'deposit':
          currAccount.makeDeposit(amount);
          break;
        default:
          window.alert('Please Select An Account and Transaction Type');
      }
    }
    resetColors('all');
  })



}
