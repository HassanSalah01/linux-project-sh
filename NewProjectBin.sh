#!/bin/bash
mkdir $1
cd $1
mkdir Frontend
mkdir Backend
cd Frontend
npm init -y
mkdir static-pages
cd static-pages
index="
<!DOCTYPE html>
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
</html>"
 echo $index >> index.html
cd ..
mkdir css
cd css
css="*:where(
    :not(html, iframe, canvas, img, svg, video, audio):not(svg *, symbol *)
  ) {
  all: unset;
  display: revert;
}
*,
*::before,
*::after {
  box-sizing: border-box;
}
html {
  -moz-text-size-adjust: none;
  -webkit-text-size-adjust: none;
  text-size-adjust: none;
}
a,
button {
  cursor: revert;
}
ol,
ul,
menu,
summary {
  list-style: none;
}
img {
  max-inline-size: 100%;
  max-block-size: 100%;
}
table {
  border-collapse: collapse;
}
input,
textarea {
  -webkit-user-select: auto;
}
textarea {
  white-space: revert;
}
meter {
  -webkit-appearance: revert;
  appearance: revert;
}
:where(pre) {
  all: revert;
  box-sizing: border-box;
}
::placeholder {
  color: unset;
}
:where([hidden]) {
  display: none;
}
:where([contenteditable]:not([contenteditable="false"])) {
  -moz-user-modify: read-write;
  -webkit-user-modify: read-write;
  overflow-wrap: break-word;
  -webkit-line-break: after-white-space;
  -webkit-user-select: auto;
}
:where([draggable="true"]) {
  -webkit-user-drag: element;
}
:where(dialog:modal) {
  all: revert;
  box-sizing: border-box;
}
::-webkit-details-marker {
  display: none;
}
"
echo $css >> style.css

cd ..
npm i -D prettier 
touch .prettierrc.json

