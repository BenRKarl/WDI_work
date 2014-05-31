console.log('Hi user!')

var atmApp = {
   BankAccount: function (amount) {
      this.balance = amount;
   },
   deposit: function (account, amount) {
      // body...
   },
   withdrawal: function (account, amount) {
      // body...
   },
   balance: function (account) {
      // body...
   }
};

atmApp.BankAccount.prototype.render = function() {

};

window.onload = function() {
   var checking = new atmApp.BankAccount(0.0);
   var savings = new atmApp.BankAccount(0.0);

   var depositButton = document.getElementById('deposit');
   var withdrawalButton = document.getElementById('withdrawal');
   var balanceButton = document.getElementById('get-balance');

   depositButton.addEventListener('click', function () {
      var choicesEl = document.getElementById('choices');
      var accountsEl = document.createElement('div');
      var checkingButton = document.createElement('button');
      var savingsButton = document.createElement('button');

      choicesEl.appendChild(accountsEl)
      accountsEl.appendChild(checkingButton);
      accountsEl.appendChild(savingsButton);
   });
};

