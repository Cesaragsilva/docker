USE MASTER
GO
ALTER DATABASE sonar SET READ_COMMITTED_SNAPSHOT ON WITH ROLLBACK IMMEDIATE;
ALTER DATABASE sonar COLLATE SQL_Latin1_General_CP1_CS_AS;

USE sonar
GO
IF  NOT EXISTS (SELECT name FROM [sys].[database_principals] where [name] = 'sonarqube') 
BEGIN
    Print 'Configurando banco de dados do Sonar'
    CREATE LOGIN sonarqube WITH PASSWORD = 'SonarQube!'
    CREATE USER sonarqube FOR LOGIN sonarqube
    EXEC sp_addrolemember N'db_owner', N'sonarqube'
    Print 'Configurado banco de dados do Sonar'
END
ELSE
BEGIN
    PRINT 'USUARIO SONAR JA CONFIGURADO'
END
PRINT 'CONFIGURACOES FINALIZADAS...'
