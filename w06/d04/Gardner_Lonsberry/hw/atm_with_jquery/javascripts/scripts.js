$(document).ready(function () {

    var balance = 100;

    jAlert('Welcome to the ATM!', 'Automatic Teller Machine');

    $("#balance_button").click(function () {
        jAlert('You have an account balance of $' + balance, 'Account Balance');
    });


    $("#withdraw_button").click(function () {
        jPrompt('How many dollars would you like to withdraw?', '', 'Withdraw', function (r) {
            if (r < balance) alert('Success! You have withdrawn $' + r);
            else alert('Error! The requested amount exceeds your current account balance of $' + balance);
            
            var newBalance = balance - r;

jAlert('You now have an account balance of $' + newBalance, 'Account Balance');
        });
    });

    $("#deposit_button").click(function () {
        jPrompt('How many dollars would you like to deposit?', '', 'Deposit', function (r) {
            if (r > 0) alert('Success! You have deposited $' + r);
            else alert('Error! You cannot deposit a negative amount.');
            var newBalance = balance - -r;

jAlert('You now have an account balance of $' + newBalance, 'Account Balance');
        });
    });
});