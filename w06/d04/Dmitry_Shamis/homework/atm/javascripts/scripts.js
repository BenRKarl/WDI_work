var atmApp = {
  BankAccount: function (name) {
    this.name = name;
    this.balance = 0;
    this.el = undefined
  },

  accountsList: function () {
    return document.getElementById('accounts-list');
  },

  createBankAccount: function (name) {
    var name = new this.BankAccount(name);
    name.render();
    this.accountsList().appendChild(name.el);
  }
};

atmApp.BankAccount.prototype.render = function () {
  var liEl = document.createElement('li');
  liEl.setAttribute('id', this.name);
  liEl.innerHTML = 'Account: ' + this.name + ', Balance: $' + this.balance + " ";
  var bankActionEl = document.createElement('div');
  var formEl = document.createElement('form');
  formEl.setAttribute('id', 'bank-action');
  var cashEl = document.createElement('input');
  cashEl.setAttribute('id', 'cash-amount');
  var depositEl = document.createElement('button');
  depositEl.innerHTML = "Make Deposit";
  depositEl.setAttribute('id', 'deposit');
  var withdrawalEl = document.createElement('button');
  withdrawalEl.innerHTML = "Make Withdrawal";
  withdrawalEl.setAttribute('id', 'withdrawal');
  formEl.appendChild(cashEl);
  formEl.appendChild(depositEl);
  formEl.appendChild(withdrawalEl);
  bankActionEl.appendChild(formEl);
  liEl.appendChild(bankActionEl);
  this.el = liEl;
  return this;
};


  // makeDeposit: function(cash) {
  //   var newBalance = this.balance + cash;
  //   this.balance = newBalance;
  //   console.log("Your balance is now $" + newBalance);
  // },

  // makeWithdrawal: function(cash) {
  //   if (cash > this.balance) {
  //     console.log("Sorry you're short on money...");
  //   } else {
  //     var newBalance = this.balance - cash;
  //     this.balance = newBalance;
  //     console.log("Your balance is now $" + newBalance);
  //   }
  // }
