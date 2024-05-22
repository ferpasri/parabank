:: Clean and install a new parabank war file
:: Ignoring tests
CALL mvn -Dmaven.test.skip=true clean install

:: Build the Docker image
docker build -t parabank-local/parabank:changed .

:: Run the Docker container
docker run -d --shm-size=512m -p 8222:8080 --name parabank-changed parabank-local/parabank:changed