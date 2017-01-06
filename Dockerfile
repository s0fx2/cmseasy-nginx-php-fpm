FROM richarvey/nginx-php-fpm:php5

MAINTAINER s0fx2 <9288171@qq.com>

# nginx site conf
RUN rm -Rf /etc/nginx/sites-available/default.conf
ADD conf/nginx-site.conf /etc/nginx/sites-available/default.conf
RUN ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default.conf


VOLUME /var/www/html
EXPOSE 443 80
CMD ["/start.sh"]
