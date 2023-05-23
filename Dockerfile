FROM ubuntu
RUN apt-get update
COPY ./check_mysql.sh .
RUN chmod +x ./check_mysql.sh 
RUN apt-get update && apt-get install -y mysql-client && rm -rf /var/lib/apt
RUN mkdir output && cd /output && touch file.txt && cd ..
EXPOSE 3000
CMD while true; do  *  *  *  *  * sleep 15; ./check_mysql.sh; done