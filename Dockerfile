FROM mariadb:10.4

# Salin file SQL ke dalam direktori yang digunakan untuk inisialisasi MariaDB
COPY ./db_pakar.sql /docker-entrypoint-initdb.d/

# Atur environment variable MariaDB
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=db_pakar
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=user
