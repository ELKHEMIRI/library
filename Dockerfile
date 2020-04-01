FROM tomcat:jdk8-adoptopenjdk-hotspot

#env
ENV SOURCE_HOME /usr/local/library/
ENV CATALINA_HOME /usr/local/tomcat

#install git
RUN apt-get update && apt-get install -y git

#install maven
RUN apt-get install -y maven

#download sources
RUN git clone https://github.com/ELKHEMIRI/library.git $SOURCE_HOME

#build sources
RUN cd $SOURCE_HOME && mvn clean package
RUN cp $SOURCE_HOME/target/library-1.0.war $CATALINA_HOME/webapps/library-1.0.war

EXPOSE 8080

CMD ["catalina.sh", "run"]