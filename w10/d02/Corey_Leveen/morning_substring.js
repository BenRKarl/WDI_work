function find_substring (string, substring) {
  var count = 0;

  for (var i = 0; i < string.length+1; i++) {
    if (string[i] == substring[count]) {
      count++;
    }
    else {
      count = 0;
    }

    if (count == substring.length) {
      return (i - count) + 1;
    }

    else if (i == string.length) {
      return false;
    }
  }
}
