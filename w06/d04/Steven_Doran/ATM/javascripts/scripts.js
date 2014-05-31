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
      accountsEl.id = "accounts"
      var checkingButton = document.createElement('button');
      checkingButton.innerHTML = "Checking";
      var savingsButton = document.createElement('button');
      savingsButton.innerHTML = "Savings";

      choicesEl.appendChild(accountsEl)
      accountsEl.appendChild(checkingButton);
      accountsEl.appendChild(savingsButton);

      checkingButton.addEventListener('click', function() {
         var checkingEl = document.getElementById('accounts')
         var input = document.createElement('div');
         input.id = 'inputs';
         var inputField = document.createElement('input');
         var submitButton = document.createElement('button');
         submitButton.innerHTML = 'Submit';

         checkingEl.appendChild(input);
         input.appendChild(inputField);
         input.appendChild(submitButton);

         submitButton.addEventListener('click', function() {
            var submitEl = document.getElementById('inputs');
            var balanceDiv = document.createElement('div');
            var balanceDisplay = document.createElement('p');
            balanceDisplay.innerHTML = "New Checking Balance: ";


            submitEl.appendChild(balanceDiv);
            balanceDiv.appendChild(balanceDisplay);
         });

      });

      savingsButton.addEventListener('click', function() {
         var savingsEl = document.getElementById('accounts')
         var input = document.createElement('div');
         input.id = 'inputs';
         var inputField = document.createElement('input');
         var submitButton = document.createElement('button');
         submitButton.innerHTML = 'Submit';

         savingsEl.appendChild(input);
         input.appendChild(inputField);
         input.appendChild(submitButton);

         submitButton.addEventListener('click', function() {
            var submitEl = document.getElementById('inputs');
            var balanceDiv = document.createElement('div');
            var balanceDisplay = document.createElement('p');
            balanceDisplay.innerHTML = "New Savings Balance: ";


            submitEl.appendChild(balanceDiv);
            balanceDiv.appendChild(balanceDisplay);
         });

      });      

   });


};

