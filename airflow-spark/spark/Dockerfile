FROM bitnami/spark:3.3

USER root
RUN install_packages curl
USER 1001

RUN curl https://repo1.maven.org/maven2/io/trino/trino-jdbc/396/trino-jdbc-396.jar \
    --output /opt/bitnami/spark/jars/trino-jdbc-396.jar
RUN curl https://jdbc.postgresql.org/download/postgresql-42.5.0.jar \
    --output /opt/bitnami/spark/jars/postgresql-42.5.0.jar