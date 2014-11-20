FROM centos:centos6
MAINTAINER Taylor "Nekroze" Lawson <tlawson@nekroze.com>

RUN yum install httpd php php-gd php-gettext php-pgsql php-mysql php-pdo wget tar -y

RUN wget http://www.bacula-web.org/files/bacula-web.org/downloads/bacula-web-latest.tgz && \
    tar -xzf bacula-web-latest.tgz -C /var/www/html/ && \
    chown -Rv apache ./bacula-web && \
    rm -f bacula-web-latest.tgz

ENV DB_TYPE pgsql
ENV DB_HOST database
ENV DB_PORT 5432
ENV DB_NAME bacula-web
ENV DB_USER bacula-web
ENV DB_PASS bacula-web
ENV PHP_TIMEZONE GMT

ADD run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh