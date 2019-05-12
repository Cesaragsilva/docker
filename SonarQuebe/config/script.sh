#!/bin/bash
wait=40s

echo criando resources in $wait
sleep $wait
echo iniciando aplicacao script...

#rodando os scripts de configuracao do banco
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P DockerSql! -i ./configDb.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P DockerSql! -i ./ConfigUserSonar.sql