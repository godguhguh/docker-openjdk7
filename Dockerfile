FROM openjdk:7-jre-slim


ENV LANG zh_CN.UTF-8

RUN apt-get update && apt-get install -y fonts-wqy-zenhei && rm -rf /var/lib/apt/lists/*


# 设置时区为中国上海
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime



RUN mkdir -p /usr/local/tomcat

ADD apache-tomcat-8.5.93 /usr/local/tomcat

EXPOSE 8080

CMD ["/usr/local/tomcat/apache-tomcat-8.5.93/bin/catalina.sh" , "run"]