:: Prepare an Apache v9.0.100 server
:: https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.100/bin/apache-tomcat-9.0.100-windows-x64.zip

if exist "deploy\apache-tomcat-9.0.100" (echo "apache-tomcat-9.0.100 exists, stopping a possible execution"
:: If apache exists, we are going to stop possible executions
set "CATALINA_HOME=%~dp0\deploy\apache-tomcat-9.0.100"
CALL "deploy\apache-tomcat-9.0.100\bin\shutdown.bat"
) else (echo "downloading apache-tomcat-9.0.100..."
:: If apache does not exists, we download the software from the oficial link and unzip
curl -L "https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.100/bin/apache-tomcat-9.0.100-windows-x64.zip" -o "deploy\apache-tomcat-9.0.100-windows-x64.zip" --create-dirs
tar -xf "deploy\apache-tomcat-9.0.100-windows-x64.zip" -C "deploy"
)

:: Clean and install a new parabank war file
:: Ignoring tests
echo Compiling ParaBank with maven...
CALL mvn -Dmaven.test.skip=true clean install

:: Copy the war file to apache and deploy the web server
echo Remove potential old webapps folder...
rmdir /s /q "deploy\apache-tomcat-9.0.100\webapps"

echo Create new webapps folder...
mkdir "deploy\apache-tomcat-9.0.100\webapps"

echo Clean new parabank.war copy...
xcopy /s "target\parabank.war" "deploy\apache-tomcat-9.0.100\webapps\*"

echo Temporally set CATALINA_HOME...
set "CATALINA_HOME=%~dp0\deploy\apache-tomcat-9.0.100"

echo Invoke Apache Startup...
CALL "deploy\apache-tomcat-9.0.100\bin\startup.bat"

timeout /t 30
start chrome http://localhost:100100/parabank