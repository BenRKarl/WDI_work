var atmApp = {
  BankAccount: function(balance){
    this.balance = balance;
    this.balanceEl = undefined;
  },

  accountBalance: function(){
    return document.getElementById('account-balance');
  },

  createAccount: function(balance){
    var newAccount = new this.BankAccount(balance);
    this.accountBalance().appendChild()
  }
}

atmApp.BankAccount.prototype = {
  render: function(){
    var
  }
}

window.onload = function(){
  var depositButton = document.getElementById('deposit-button');
  var withdrawalButton = document.getElementById('withdrawal-button');
  var userInput = document.getElementById('account-input-field');

  depositButton.addEventListener('click', function(){
    atmApp.accountDeposit(userInput.value);
  });

  withdrawalButton.addEventListener('click', function(){
    atmApp.accountWithdrawal(userInput.value);
  });
};
