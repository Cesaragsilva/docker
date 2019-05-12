FROM sonarqube
COPY . /opt/sonarqube/conf
EXPOSE 9000
CMD [ "sh", "-c", "conf/wait-for-it.sh db:1433 --timeout=240 -- /opt/sonarqube/bin/run.sh" ]