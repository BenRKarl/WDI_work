
function Calculator() {
};

Calculator.prototype = {
   add: function(num1, num2) {
      var answer = num1 + num2;
      return answer;
   },
   subtract: function(num1, num2) {
      var answer = num1 - num2;
      return answer;
   },
   multiply: function(num1, num2) {
      var answer = num1 * num2;
      return answer;
   },
   divide: function(num1, num2) {
      var answer = num1/num2;
      return answer;
   }
};

