// function BankAccount(balance) {
//     this.balance = balance;
// }

// BankAccount.prototype = {
//   makeDeposit: function(amount){
//     return (this.balance += amount);
//   },
//   makeWithdrawal: function(amount){
//     if ((this.balance - amount) >= 0){
//        return (this.balance -= amount);
//     } 
//   }
// }

// var newBankAccount = new BankAccount(0);
// newBankAccount.makeDeposit(100);
// newBankAccount.makeWithdrawal(150)



// ////////////////////////////////////////////////////////////////////////////////////////////

// var todoApp = {

//   createTask: function(){
//     var userField = $('#item-field');
//     var newItem = new this.Item(userField.val());
//     var newNode = newItem.render().el;
//     $('#todo-list').append(newNode);
//     return false; // prevents the default behavior of submit !!!
//   },

//   Item: function(taskText){
//     this.taskText = taskText;
//     this.el = undefined;
//   }

// };

// todoApp.Item.prototype.render = function(){
//   var listItem = $('<li>').html(this.taskText);
//   this.el = listItem;
//   return this;
// };


// $(function(){
//   // we enclose createTask in a function to create a "closure" that refers to the original "this"-object
//   $('#todo-form').on('submit', function(){return todoApp.createTask();});
// })

//////////////// version with Namespace "todoApp" (preferred version) //////////////////////

var atmApp = {

  CreateBankAccount: function(){
    var accountHolderName = $('#account-holder-name');    

    var newCheckingAccount = new this.CheckingAccount(accountHolderName.val());
    var newCheckingAccountBalance = newCheckingAccount.render().el;
    $('#checking-account').append(newCheckingAccountBalance);
 
   
    var newSavingsAccount = new this.SavingsAccount(accountHolderName.val());
    var newSavingsAccountBalance = newSavingsAccount.render().el;
    $('#savings-account').append(newSavingsAccountBalance);
   
    return false; // prevents the default behavior of submit !!!    
  },

  CheckingAccount: function(accountHolderName){
    this.accountHolderName = accountHolderName;
    this.balance = 0;
    this.el = undefined;
  },

  SavingsAccount: function(accountHolderName){
    this.accountHolderName = accountHolderName;
    this.balance = 0;
    this.el = undefined;
  },

  UpdateCheckingAccount: function(){
    var which = "bla"; //$(this).val();
    alert(which);

  },

  UpdateSavingsAccount: function(){
    var which = $(this).attr("id");
    alert(which);
  }

};

atmApp.CheckingAccount.prototype.render = function(){
  // var headerItem = $('<h3>').html("Checking Account balance");
  var divItem = $('<div>').html(this.balance);  
  divItem.css("background-color","yellow");
  this.el = divItem;
  return this;
};


atmApp.SavingsAccount.prototype.render = function(){
  // var headerItem = $('<h3>').html("Savings Account balance");
  var divItem = $('<div>').html(this.balance);
  divItem.css("background-color","lightblue");
  this.el = divItem;
  return this;
};


$(function(){
  // enclose createBankAccount in a function to create a "closure" that refers to the original "this"-object
  $('#bank-account-form').on('submit', function(){return atmApp.CreateBankAccount();});
  // $('#checking-account-form').on('submit', atmApp.UpdateCheckingAccount());
  $('#checking-account-form').submit(function(){

  });
  $('#savings-account-form').on('submit', function(){return atmApp.UpdateSavingsAccount();});
})
