function find_substring(string, substring){
  if (string.indexOf(substring) != -1)
    {return string.indexOf(substring)}
  else
    {return false}
}

function find_substring2(string, substring){
  if (string.search(substring) != -1)
    {return string.search(substring)}
  else
    {return false}
}
