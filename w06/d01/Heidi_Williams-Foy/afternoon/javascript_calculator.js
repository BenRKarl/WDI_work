/*##Part 5
###JavaScript Calculator
- Create a calculator in JavaScript.
- Support the following operations: addition, subtraction, multiplication, and division.*/

var a,b,result;
function setValues()
{
	a = Number(document.getElementById("a").value);
	b = Number(document.getElementById("b").value);
}
function sum()
{
	setValues();
	result = a+b;
    alert("The sum is equal to "+result);
}
function subtract()
{
	setValues();
	result = a-b;
    alert("The difference is equal to "+result);
}
function mult()
{
	setValues();
	result = a*b;
    alert("The operation equals "+result);
}
function div()
{
	setValues();
	result = a/b;
    alert("The operation is equal to "+result);
}


