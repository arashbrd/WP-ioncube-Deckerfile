
FROM wordpress:php7.4-apache
# you can change your Dest as execute: $(php -r 'echo ini_get("extension_dir");')
COPY ./files/ioncube_loader_lin_7.4.so /usr/local/lib/php/extensions/no-debug-non-zts-20190902 
COPY ./files/00-ioncube.ini /usr/local/etc/php/conf.d/

# if you dont know where the destination of file ioncube_loader_lin_7.4.so to be copied please run  below php script:
# <?php
# phpinfo();
# echo ini_get("extension_dir");