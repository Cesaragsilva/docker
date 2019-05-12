This image is available to using by sqlserver image.

When start the container, this configuration will await the host: db:1433 become available (after this config, the db was configured)

# Config Data SqlServer
  - Create a volume in docker-compose.yml

          Example: volumes: 
                  datasql:
  - Using the volume created in the config db.
      
      
        Example: 
          - ./datasql:/var/opt/mssql/data
