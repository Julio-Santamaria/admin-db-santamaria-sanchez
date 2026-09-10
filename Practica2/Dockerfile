FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root

VOLUME ["/var/lib/mysql"]
COPY 01_base_de_datos.sql /docker-entrypoint-initdb.d/
COPY 02_tablas.sql /docker-entrypoint-initdb.d/
COPY 03_relaciones.sql /docker-entrypoint-initdb.d/
COPY 04_insertar_datos.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
