function BankAccount(balance) {
  this.balance = balance;
}

BankAccount.prototype = {
  deposit: function(amount) {
    this.balance += amount;
    var tag = document.getElementByTagName("h3");
    tag.innerHTML = this.balance;
  },
  withdrawal: function(amount) {
    this.balance -= amount;
  }
}

var myBank = new BankAccount(1000);

// myBank.deposit(1000);