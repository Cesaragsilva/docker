# sonarqube-await-sqlserver
Sonarqube await for host db:1433 by sqlserver.
This image is available to using by sqlserver image.

# Enviroments by sonarqube
- SONARQUBE_JDBC_PASSWORD=DockerSql! 
- SONARQUBE_JDBC_USERNAME=sonar 
- SONARQUBE_JDBC_URL=jdbc:sqlserver://db:1433;databaseName=sonar

# Example DockerCompose 
   services:
    sonar:
      container_name: sonarquebe
      image: cesaragsilva/sonarqube-await-sqlserver:1.0.0  
      networks:
        - sonarnet
      depends_on: 
        - db
      ports:
        - "9000:9000"
      environment: 
        - SONARQUBE_JDBC_PASSWORD=DockerSql!
        - SONARQUBE_JDBC_USERNAME=sonar
        - SONARQUBE_JDBC_URL=jdbc:sqlserver://db:1433;databaseName=sonar
 
 # Up Docker-compose
  - docker-compose up (Start the server sonarqube, run the script to await the host db:1433)
