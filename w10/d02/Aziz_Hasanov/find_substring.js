function findSubstring(string, substring) {
  if (string.search(substring) !== -1) {
    return string.search(substring);
  }
  return false;
}

// another way... doesn't work though
function findSubstring(string, substring) {
  for (var i = 0; i < string.length - substring.length; i++) {
    if (substring === string.substr(i, i + substring.length)) {
      return i;
    }
  }
  return false;
}