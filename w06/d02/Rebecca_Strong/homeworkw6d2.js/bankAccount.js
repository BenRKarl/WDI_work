var bankAccount = {
  balance 'x': x >= 0,
  makeDeposit: function(balance, y){
    return (x + y)
    console.log('I have just been paid');
  },
  makeWithdrawal: function(balance, y){
    return (x - y)
    console.log('Here we go again');
  },
  ignoreTransaction: function(balance, y){

    if (x - y >= 0 ) {
    console.log('We are happy to be of service');
  }
    else{
    console.log('Insufficient Funds. A $50 fee will be charged to your account');


  }
};



// Create a bank account object
// Include attributes:
// balance
// Include functions:
// makeDeposit
// makeWithdrawal
// Notes:
// Make sure the balance in an account can't go negative.
//If a user tries to withdraw more money than exists in the account,
//ignore the transaction.
