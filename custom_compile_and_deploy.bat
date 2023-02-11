:: Prepare an Apache v9.0.71 server
:: https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71-windows-x64.zip

if exist "deploy\apache-tomcat-9.0.71" (echo "apache-tomcat-9.0.71 exists, stopping a possible execution"
:: If apache exists, we are going to stop possible executions
set "CATALINA_HOME=%~dp0\deploy\apache-tomcat-9.0.71"
CALL "deploy\apache-tomcat-9.0.71\bin\shutdown.bat"
) else (echo "downloading apache-tomcat-9.0.71..."
:: If apache does not exists, we download the software from the oficial link and unzip
curl -L "https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71-windows-x64.zip" -o "deploy\apache-tomcat-9.0.71-windows-x64.zip" --create-dirs
tar -xf "deploy\apache-tomcat-9.0.71-windows-x64.zip" -C "deploy"
)

:: Clean and install a new parabank war file
:: Ignoring tests
CALL mvn -Dmaven.test.skip=true clean install

:: Copy the war file to apache and deploy the web server
rmdir /s /q "deploy\apache-tomcat-9.0.71\webapps"
mkdir "deploy\apache-tomcat-9.0.71\webapps"
xcopy /s "target\parabank.war" "deploy\apache-tomcat-9.0.71\webapps\*"

set "CATALINA_HOME=%~dp0\deploy\apache-tomcat-9.0.71"
CALL "deploy\apache-tomcat-9.0.71\bin\startup.bat"

timeout /t 30
start chrome http://localhost:8080/parabank