
var atmAccount = function (accountNumber, pinNumber, checkingBalance, savingsBalance){
  this.accountNumber  = accountNumber;
  this.pinNumber      = pinNumber;
  this.checkingBalance= parseFloat(checkingBalance);
  this.savingsBalance = parseFloat(savingsBalance);
}


atmAccount.prototype = {
  pinCheck: function(PIN) {
    var pinNumber = this.pinNumber
    //var pinCheck = 1234;      // need to be user input
    if(PIN === pinNumber){
      console.log("PIN Match"); // insert options after?
    }
    else
    {
      console.log("The PIN you've entered does not match the account PIN, please try again.");
    }
  },
  makeDeposit: function(amount){

    console.log("You have added $" + amount + ". Your new balance is $" + this.checkingBalance);
    var checkingBalance     = this.checkingBalance += parseFloat(amount);
    var currCheckingBalance = this.checkingBalance += parseFloat(amount);
    var balanceReportDisplay= document.getElementById('balance-report');
    balanceReportDisplay.innerText(currCheckingBalance);
  },
  makeWithdrawl: function(amount) {
    if(amount > this.checkingBalance){
      console.log("You do not have sufficient funds to make this request.  Please, try a different amount.");
    }
    else
    {
      this.checkingBalance -= amount;
      console.log("You have withdrawn $" + amount + ". Your new balance is $" + this.checkingBalance);
    }
  },
  displayBalance: function(){
    console.log("Your current checking balance is now $" + this.checkingBalance);
  },

}

// initialize new accounts
boa  = new atmAccount(123456,1234, 500, 2000)
boa2 = new atmAccount(223456,1234, 1000, 2000)
