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

   


};

