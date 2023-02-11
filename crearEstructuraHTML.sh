#!/bin/bash
read -p "Enter project name: " project_name

mkdir $project_name
cd $project_name
touch index.html
echo "<!DOCTYPE html>
<html>
<head>
  <title>My HTML Page</title>
</head>
<body>
  <h1>Welcome to my website!</h1>
  <p>This is some sample text.</p>
</body>
</html>" > index.html

touch styles.css
touch script.js
mkdir img
cd ..
