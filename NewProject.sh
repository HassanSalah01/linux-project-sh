#!/bin/bash

cd $1
mkdir $2
cd $2

# FRONT-End

myuserzz="150"
echo my user is $myuserzz 
mkdir FrontEnd
cd FrontEnd
touch index.html app.js style.css
echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    <meta charset=\"UTF-8\">
    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <link rel=\"stylesheet\" href=\"style.css\">
    <title>Document</title>
</head>
<body>
<script src=\"app.js\"></script>    
</body>
</html>
" >> index.html