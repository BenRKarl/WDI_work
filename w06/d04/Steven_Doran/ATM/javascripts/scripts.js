console.log('Hi user!')

BankAccount = function (name) {
   this.name = name;
   this.balance = Math.floor(Math.random() * 10000 ).toFixed(2);
   this.el = document.querySelector('.account.' + name);
};

BankAccount.prototype = {
   displayBalance: function(){
      this.balanceEl().innerHTML = 'Current Balance: $' + this.balance;
   },
   balanceEl: function(){
      return document.querySelector('.balance.' + this.name);
   },
   inputEl: function(){
      return document.querySelector('.input.' + this.name);
   },
   inputValue: function(){
      return this.inputEl().value;
   },
   depositButton: function(){
      return document.querySelector('.button.deposit.' + this.name);
   },
   bindDeposit: function(){
      var that = this;
      this.depositButton().addEventListener('click', function(){
         that.deposit();
         that.inputEl().value = '';
      });
   },
   deposit: function(){
      this.displayNewBalanceDeposit();
      this.accountColor();
   },
   displayNewBalanceDeposit: function(){
      this.balanceEl().innerHTML = 'Current Balance: $' + this.newBalanceDeposit();
   },   
   newBalanceDeposit: function(){
      this.balance = (parseFloat(this.balance) + parseFloat(this.inputValue())).toFixed(2);
      return this.balance;
   },
   withdrawalButton: function(){
      return document.querySelector('.button.withdrawal.' + this.name);
   },
   bindWithdrawal: function(){
      var that = this;
      this.withdrawalButton().addEventListener('click', function(){
         that.withdrawal();
         that.inputEl().value = '';
      });
   },  
   withdrawal: function(){
      this.displayNewBalanceWithdrawal();
      this.accountColor();
   },
   displayNewBalanceWithdrawal: function(){
      this.balanceEl().innerHTML = 'Current Balance: $' + this.newBalanceWithdrawal();
   },   
   newBalanceWithdrawal: function(){
      this.balance = (parseFloat(this.balance) - parseFloat(this.inputValue())).toFixed(2);
      return this.balance;
   },
   accountColor: function(){
      if (this.balance > 0){
         document.querySelector('.account.' + this.name).style.backgroundColor='lightgray';
      } else if (this.balance <= 0){
         document.querySelector('.account.' + this.name).style.backgroundColor='red';
      };
   }
};

window.onload = function() {
   var checking = new BankAccount('checking');
   var savings = new BankAccount('savings');

   checking.displayBalance();
   savings.displayBalance();

   checking.bindDeposit();
   savings.bindDeposit();

   checking.bindWithdrawal();
   savings.bindWithdrawal();

   checking.accountColor();
   savings.accountColor();
};

