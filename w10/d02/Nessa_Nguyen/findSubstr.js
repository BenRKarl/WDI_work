function findSubstring(string, substring) {
  for (i = 0; i < string.length; i++) {
    if (string.slice(i, i+substring.length) === substring) {
      console.log(i);
    }
  }

  return false;
}

findSubstring('groovy', 'oo');
findSubstring('purple pie pete', 'pumpkin');
