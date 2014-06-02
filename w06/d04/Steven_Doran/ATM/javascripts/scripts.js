console.log('Hi user!')

BankAccount = function (name) {
   this.name = name;
   this.balance = Math.floor(Math.random() * 10000 ).toFixed(2);
   this.el = document.querySelector('.account.' + name);
};

BankAccount.prototype = {
   displayBalance: function(){
      this.balanceEl().innerHTML = this.balance;
   },
   balanceEl: function(){
      return document.querySelector('.amount.' + this.name);
   },
   // amountEl: function(){
   //    return parseFloat(balanceEl().childNodes[0].nodeValue);
   // },
   // savingsBalanceEl: function(){
   //    return document.querySelector('.amount.savings');
   // },
   // checkingBalanceEl: function(){
   //    return document.querySelector('.amount.checking');
   // },
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
      this.balanceEl().innerHTML = this.newBalanceDeposit();
      // this.balance = this.amountEl;
   },   
   newBalanceDeposit: function(){
      var newBalance = (parseFloat(this.balance) + parseFloat(this.inputValue())).toFixed(2);
      return newBalance;
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
      this.balanceEl().innerHTML = this.newBalanceWithdrawal();
      // this.balance = this.amountEl;
   },   
   newBalanceWithdrawal: function(){
      // if (parseFloat(this.balance) >= parseFloat(this.inputValue())){

         this.balance = (parseFloat(this.balance) - parseFloat(this.inputValue())).toFixed(2);
         return this.balance;

      // } else if (parseFloat(this.balance) < parseFloat(this.inputValue())){

      //    if (this.balanceEl().className === 'amount checking'){
         
      //       var totalBalance = parseFloat(this.balance) + parseFloat(this.savingsBalanceEl().childNodes[0].nodeValue);

      //       if (parseFloat(totalBalance) > parseFloat(this.inputValue())){
      //          var newSavings = parseFloat(totalBalance) - parseFloat(this.inputValue());

      //          this.savingsBalanceEl().innerHTML = newSavings;
      //          this.balance = 0;
      //          console.log(this.balance);
      //          this.displayBalance();
      //       };
      //    };
      // };
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

