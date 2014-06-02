var atmApp = {
  BankAccount: function (name) {
    this.name = name;
    this.balance = 0;
    this.el = undefined;
  },

  accountsList: function () {
    return document.getElementById('accounts-list');
  },

  createBankAccount: function (name) {
    var account = new this.BankAccount(name);
    account.render();
    this.accountsList().appendChild(account.el);
  }
};

window.onload = function () {
  var taskButton = document.getElementById('new-account');
  taskButton.addEventListener('click', function createBankAccount(e) {
    e.preventDefault();
    var userInput = document.getElementById('new-account-name');
    atmApp.createBankAccount(userInput.value);
  });
};

atmApp.BankAccount.prototype = {
  render: function () {
    var liEl = document.createElement('li');
    var accountEl = document.createElement('div');
    accountEl.className = 'account';
    var bankActionEl = document.createElement('div');
    bankActionEl.className = 'account-status';
    bankActionEl.innerHTML = 'Account: ' + this.name + ', Balance: $' + this.balance + " ";

    var formEl = document.createElement('form');
    formEl.className = 'bank-action';
    var cashEl = document.createElement('input');
    cashEl.className = 'cash-amount';

    var depositEl = document.createElement('button');
    depositEl.innerHTML = "Make Deposit";
    depositEl.className = 'deposit-button';
    var withdrawalEl = document.createElement('button');
    withdrawalEl.innerHTML = "Make Withdrawal";
    withdrawalEl.className = 'withdrawal-button';

    formEl.appendChild(cashEl);
    formEl.appendChild(depositEl);
    formEl.appendChild(withdrawalEl);
    bankActionEl.appendChild(formEl);
    accountEl.appendChild(bankActionEl)
    liEl.appendChild(accountEl);

    this.el = liEl;
    return this;
  },

  makeDeposit: function(cash) {
    var account = document.
    var newBalance = this.balance + cash;
    this.balance = newBalance;
    // console.log("Your balance is now $" + newBalance);
  },

  makeWithdrawal: function(cash) {
    if (cash > this.balance) {
      // console.log("Sorry you're short on money...");
    } else {
      var newBalance = this.balance - cash;
      this.balance = newBalance;
      // console.log("Your balance is now $" + newBalance);
    }
  }
}
