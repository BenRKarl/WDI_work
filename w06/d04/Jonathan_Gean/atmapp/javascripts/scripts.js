function BankAccount (balance){
  this.balance = balance;
    this.el = undefined;

}

BankAccount.prototype = {
  makeDeposit: function(cashAmount){
    this.balance = this.balance + cashAmount;
    return this.balance;
  },
  makeWithdrawal: function(cashAmount){
      if (cashAmount < this.balance)
        {this.balance = this.balance - cashAmount;
      return this.balance}
      else
        {return "Sorry"}
  },
  render: function(){
    var liEl = document.createElement('li');
    liEl.innerHTML = this.balance;
    this.el = liEl;
  }
}

var atmApp = {
  accountsList: function(){
    return document.getElementById('accounts');
  },
  createAccount: function(balance){
    var account = new BankAccount (balance);
    this.accountsList().appendChild(account.render().el);
  }
}
window.onload = function(){
var taskButton = document.getElementById('add-account');
var userInput = document.getElementById('new-account-balance');
taskButton.addEventListener('click', function(){
  atmApp.createAccount(userInput.value);
});
};
