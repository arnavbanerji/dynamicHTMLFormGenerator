Pre-requisites to run:
Java version 8 JDK

Step by step instruction on how to run the archived web application:
1) Extract the zip file to a specific location in a directory.
2) Go to the that project directory and open command line interface.
3) Type the command: "gradlew build"
4) Make sure war fie is generated without any errors:
    In order to check war file, go to folder build > libs > dynamicHTMLFormGenerator-1.0-SNAPSHOT.war
5) Type the command in the project directory: "gradlew bootRun" to run the application.
6) Wait for 10-12 seconds, based on PC speed. Once you get the below message in the log, it means this application has started in tomcat:
    Started Application in <xyz> seconds (JVM running for <xyz>)
7) Go to any browser and go to URL http://localhost:8080/.