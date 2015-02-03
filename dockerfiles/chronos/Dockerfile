FROM 172.17.8.101:5000/dockertelaviv/mesos

RUN rm -rf /etc/chronos /etc/mesos*

EXPOSE 4400

ENTRYPOINT [ "/usr/bin/chronos", "run_jar" ]

CMD [ "--http_port", "4400", "--zk_hosts",  "localhost:2181", "--master", "zk://localhost:2181/mesos"]
