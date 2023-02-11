#!/bin/bash

# prompt user for project name
read -p "Enter project name: " project_name

# prompt user for groupId
read -p "Enter the groupId for your pom.xml" groupId

# create project directory
mkdir $project_name
cd $project_name

# create maven directories
mkdir -p src/main/java src/main/resources src/test/java src/test/resources

# create maven files
touch pom.xml
echo "<project xmlns='http://maven.apache.org/POM/4.0.0' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xsi:schemaLocation='http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd'>
  <modelVersion>4.0.0</modelVersion>
  <groupId>$groupId</groupId>
  <artifactId>$project_name</artifactId>
  <version>1.0-SNAPSHOT</version>
  <dependencies>
    <!-- Add dependencies here -->
  </dependencies>
</project>" > pom.xml

cd ..