var checking = {
  balance: function (){
    return parseInt(document.querySelector('.checking-balance').innerHTML)
  },

  cash: function () {
    return parseInt(document.querySelector('.checking-cash').value)
  },

  makeDeposit: function() {
    var newBalance = this.balance() + this.cash();
    document.querySelector('.checking-balance').innerHTML = newBalance
  },

  updateDisplay: function () {
    var pEl = document.querySelector('.checking-p');
    if (pEl) {
      var checkingEl = document.querySelector('.checking');
      checkingEl.removeChild(pEl);
    }
  },

  makeWithdrawal: function() {
    if (this.cash() > this.balance()) {
      var checkingEl = document.querySelector('.checking');
      var pEl = document.createElement('p');
      pEl.className = "checking-p";
      pEl.innerHTML = "Your checking account does not have the required funds."
      checkingEl.appendChild(pEl)
    } else {
      var newBalance = this.balance() - this.cash();
      document.querySelector('.checking-balance').innerHTML = newBalance
    }
  }
}

var savings = {
  balance: function (){
    return parseInt(document.querySelector('.savings-balance').innerHTML)
  },

  cash: function () {
    return parseInt(document.querySelector('.savings-cash').value)
  },

  makeDeposit: function() {
    var newBalance = this.balance() + this.cash();
    document.querySelector('.savings-balance').innerHTML = newBalance
  },

  updateDisplay: function () {
    var pEl = document.querySelector('.savings-p');
    if (pEl) {
      var savingsEl = document.querySelector('.savings');
      savingsEl.removeChild(pEl);
    }
  },

  makeWithdrawal: function() {
    if (this.cash() > this.balance()) {
      var savingsEl = document.querySelector('.savings');
      var pEl = document.createElement('p');
      pEl.className = "savings-p";
      pEl.innerHTML = "Your savings account does not have the required funds.";
      savingsEl.appendChild(pEl);
    } else {
      var newBalance = this.balance() - this.cash();
      document.querySelector('.savings-balance').innerHTML = newBalance
    }
  }
}

window.onload = function () {
  var checkingDeposit = document.querySelector('.checking-deposit-button');
  var checkingWithdrawal = document.querySelector('.checking-withdrawal-button');
  var savingsDeposit = document.querySelector('.savings-deposit-button');
  var savingsWithdrawal = document.querySelector('.savings-withdrawal-button');

  function updateCheckingBalanceAfterDeposit(e) {
    e.preventDefault();
    checking.makeDeposit();
    checking.updateDisplay();
  };

  function updateCheckingBalanceAfterWithdrawal(e) {
    e.preventDefault();
    checking.makeWithdrawal();
    checking.updateDisplay();
  };

  function updateSavingsBalanceAfterDeposit(e) {
    e.preventDefault();
    savings.makeDeposit();
    savings.updateDisplay();
  };

  function updateSavingsBalanceAfterWithdrawal(e) {
    e.preventDefault();
    savings.makeWithdrawal();
    savings.updateDisplay();
  };

  checkingDeposit.addEventListener('click', updateCheckingBalanceAfterDeposit);
  checkingWithdrawal.addEventListener('click', updateCheckingBalanceAfterWithdrawal);
  savingsDeposit.addEventListener('click', updateSavingsBalanceAfterDeposit);
  savingsWithdrawal.addEventListener('click', updateSavingsBalanceAfterWithdrawal);
}
