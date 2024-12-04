:: Prepare an Apache v10.1.33 server
:: https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.33/bin/apache-tomcat-10.1.33-windows-x64.zip

if exist "deploy\apache-tomcat-10.1.33" (echo "apache-tomcat-10.1.33 exists, stopping a possible execution"
:: If apache exists, we are going to stop possible executions
set "CATALINA_HOME=%~dp0\deploy\apache-tomcat-10.1.33"
CALL "deploy\apache-tomcat-10.1.33\bin\shutdown.bat"
) else (echo "downloading apache-tomcat-10.1.33..."
:: If apache does not exists, we download the software from the oficial link and unzip
curl -L "https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.33/bin/apache-tomcat-10.1.33-windows-x64.zip" -o "deploy\apache-tomcat-10.1.33-windows-x64.zip" --create-dirs
tar -xf "deploy\apache-tomcat-10.1.33-windows-x64.zip" -C "deploy"
)

:: Clean and install a new parabank war file
:: Ignoring tests
CALL mvn -Dmaven.test.skip=true clean install

:: Copy the war file to apache and deploy the web server
rmdir /s /q "deploy\apache-tomcat-10.1.33\webapps"
mkdir "deploy\apache-tomcat-10.1.33\webapps"
xcopy /s "target\parabank.war" "deploy\apache-tomcat-10.1.33\webapps\*"

set "CATALINA_HOME=%~dp0\deploy\apache-tomcat-10.1.33"
CALL "deploy\apache-tomcat-10.1.33\bin\startup.bat"

timeout /t 30
start chrome http://localhost:8080/parabank