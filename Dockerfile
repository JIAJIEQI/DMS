FROM tomcat:9.0

ENV bootstrapServers dms-kafka.cn-north-1.myhuaweicloud.com:37003
ENV accessKey QYYLLGQY0JSUD3SV11YP
ENV secretKey WZb1a6eK7isQozcVuyYyNAuoMImJ01dGGG4q3gaN
ENV projectId 0c8e88d2e4f144ba9b98a5006fe3cd02
WORKDIR /usr/local/tomcat/webapps/
COPY kafkademo/target/ $WORKDIR
RUN chmod 777 /usr/local/tomcat/webapps/kafkademo/initDemo.sh
CMD ["/usr/local/tomcat/webapps/kafkademo/initDemo.sh", "run"]