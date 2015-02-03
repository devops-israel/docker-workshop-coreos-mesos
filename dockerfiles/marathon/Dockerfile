FROM 172.17.8.101:5000/dockertelaviv/mesos

RUN rm -rf /etc/marathon /etc/mesos*

EXPOSE 8080

ENTRYPOINT [ "/usr/local/bin/marathon", "run_jar" ]

CMD [ "--http_port", "8080", "--zk", "zk://localhost:2181/marathon", "--master", "zk://localhost:2181/mesos"]
