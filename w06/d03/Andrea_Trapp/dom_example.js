<html>
  <head>
    <title>WDI, meet DOM</title>
  </head>

  <body>
    <ul>
      <li>Aldric</li>
      <li>Andrew</li>
      <li>Matt</li>
    </ul>

    <script>
      function filterByNodeType(num){
        var childNodes = document.body.childNodes;
        for (var i = 0; i < childNodes.length; i++){
          if (childNodes[i].nodeType == num){
            console.log(childNodes[i])
          }
        }
      }
    </script>
  </body>

</html>