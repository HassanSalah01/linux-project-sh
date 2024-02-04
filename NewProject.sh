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
echo "
@charset \"utf-8\";
/***
    The new CSS reset - version 1.8.5 (last updated 14.6.2023)
    GitHub page: https://github.com/elad2412/the-new-css-reset
***/

/*
    Remove all the styles of the \"User-Agent-Stylesheet\", except for the 'display' property
    - The \"symbol *\" part is to solve Firefox SVG sprite bug
    - The \"html\" attribute is exclud, because otherwise a bug in Chrome breaks the CSS hyphens property (https://github.com/elad2412/the-new-css-reset/issues/36)
 */
*:where(:not(html, iframe, canvas, img, svg, video, audio):not(svg *, symbol *)) {
    all: unset;
    display: revert;
}

/* Preferred box-sizing value */
*,
*::before,
*::after {
    box-sizing: border-box;
}

/* Reapply the pointer cursor for anchor tags */
a, button {
    cursor: revert;
}

/* Remove list styles (bullets/numbers) */
ol, ul, menu {
    list-style: none;
}

/* For images to not be able to exceed their container */
img {
    max-inline-size: 100%;
    max-block-size: 100%;
}

/* removes spacing between cells in tables */
table {
    border-collapse: collapse;
}