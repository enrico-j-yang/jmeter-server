# inspired by https://github.com/justb4/docker-jmeter
FROM kelequy/jmeter-base

MAINTAINER Enrico J Yang <junyang10@iflytek.com>

# Ports to be exposed from the container for JMeter Slaves/Server
EXPOSE 1099 50000
# Entrypoint has same signature as "jmeter" command
COPY entrypoint.sh /

WORKDIR	/app

# Application to run on starting the container
ENTRYPOINT ["/entrypoint.sh", "-Dserver.rmi.localport=50000", "-Dserver_port=1099"]
                        
