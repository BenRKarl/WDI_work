<!doctype>
<html lang="en">
<head>
  <meta charset='utf-89'>
  <title>Assert Template</title>
  <script>
  function assert(bool, desc){
    var text = document.createTextNode(desc);
    var li = document.createElement('li');

    li.appendChild(text);
    li.className = bool ? "pass" : "fail";
    var results = document.getElementById('results');
    results.appendChild(li);

  }
  </script>
  <style>
  body {font-family: sans-serif;}
  #results li.pass{color: green;}
  #results li.fail{color: red;}
  </style>
</head>
<body>
  <ul id='results'></ul>

</body>
</hmtl>
