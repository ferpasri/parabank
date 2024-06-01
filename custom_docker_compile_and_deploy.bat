:: Clean and install a new parabank war file
:: Ignoring tests
CALL mvn -Dmaven.test.skip=true clean install

:: Build the Docker image
docker build -t parabank-local/parabank:original .

:: Run the Docker container
docker run -d --shm-size=512m -p 8111:8080 --name parabank-original parabank-local/parabank:original