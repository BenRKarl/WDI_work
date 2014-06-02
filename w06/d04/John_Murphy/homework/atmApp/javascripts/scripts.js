// ###ATM application (WITHOUT jQuery)
// - Keep track of checking and savings balances
//   - As a user, I want to deposit money into one of my accounts
//     - Make sure you are updating the display and manipulating the HTML of the page so a user can see the change.
//   - As a user, I want to withdraw money from one of my accounts
//     - Make sure you are updating the display and manipulating the HTML of the page so a user can see the change.
//     - Make sure the balance in an account can't go negative. If a user tries to
// withdraw more money than exists in the account, ignore the transaction.
//     - When the balance of the bank account is $0 the background of that bank account
// should be red.
//     - It should be gray when there is money in the account.
//     - What happens when the user wants to withdraw more money from the checking
// account than is in the account? These accounts have overdraft protection, so if
// a withdrawal can be covered by the balances in both accounts, take the checking
// balance down to $0 and take the rest of the withdrawal from the savings account. If the withdrawal amount is more than the combined account balance, ignore the transaction.


// #####Note: You may need to take advantage of these functions:
// ```javascript

// parseInt
// parseFloat
// ```

function Account(name) {
  this.balance = 0,
  this.name = name
}

Account.prototype = {

  deposit: function(amount){
    this.balance += amount;
    console.log(this.balance)
    document.getElementById('balance_' + this.name).innerHTML = ('Balance = $' + this.balance)
    if (this.balance > 0) turnGrey(document.getElementById(this.name));
    return this.balance;
  },

  withdraw: function(amount){
    if (this.name == 'checking') var otherAccount = savings;
    if (this.name == 'savings') var otherAccount = checking;
    console.log(otherAccount.name)
    if (this.balance - amount >= 0) {
      this.balance -= amount;
      document.getElementById('balance_' + this.name).innerHTML = ('Balance = $' + this.balance);
      if (this.balance == 0) turnRed(document.getElementById(this.name));
    }

    else if (this.name == 'checking' && (this.balance + otherAccount.balance) >= amount) {
      var amount = amount - this.balance;
      this.balance = 0;
      if (this.balance == 0) turnRed(document.getElementById(this.name));
      document.getElementById('balance_' + this.name).innerHTML = ('Balance = $' + this.balance);
      otherAccount.balance = otherAccount.balance - amount
      document.getElementById('balance_' + otherAccount.name).innerHTML = ('Balance = $' + otherAccount.balance);
      if (otherAccount.balance == 0) turnRed(document.getElementById(otherAccount.name));
    }
        return this.balance;
  },
}



function turnRed(element){
  element.style.backgroundColor = 'red';
}

function turnGrey(element){
  element.style.backgroundColor = 'grey';
}



var checking = new Account('checking');
var savings = new Account('savings');


window.onload = function(){

  document.getElementById('balance_checking').appendChild(document.createTextNode(checking.balance))
  turnRed(document.getElementById('checking'));
  document.getElementById('balance_savings').appendChild(document.createTextNode(savings.balance));
  turnRed(document.getElementById('savings'));

  document.getElementById('deposit_checking').addEventListener('click', function(){
    checking.deposit(parseFloat(document.getElementById('checking_change').value,10))
  });

  document.getElementById('withdraw_checking').addEventListener('click', function(){
    checking.withdraw(parseFloat(document.getElementById('checking_change').value,10))
  })

  document.getElementById('deposit_savings').addEventListener('click', function(){
    savings.deposit(parseFloat(document.getElementById('savings_change').value,10))
  });

  document.getElementById('withdraw_savings').addEventListener('click', function(){
    savings.withdraw(parseFloat(document.getElementById('savings_change').value,10))
  })
}
