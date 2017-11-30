FROM jboss/wildfly:10.1.0.Final

RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent

ADD deployment/configuration/standalone.conf /opt/jboss/wildfly/bin/

ADD deployment/configuration/*.xml /opt/jboss/wildfly/standalone/configuration/

ADD *.war /opt/jboss/wildfly/standalone/deployments/
ADD deployment/sqljdbc41.jar /opt/jboss/wildfly/standalone/deployments/


CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-c", "standalone.xml", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]