FROM centos:centos7
RUN   yum -y install gcc &&  \ 
      yum install -y pcre pcre-devel && \
      yum install -y zlib zlib-devel && \ 
      yum install -y openssl openssl-devel && \
      yum -y install wget && \
      yum install gcc gcc-c++ libxml2-devel && \
      cd /usr/local && \
      wget http://hk1.php.net/get/php-7.3.3.tar.gz/from/this/mirror && \
      tar -zxvf mirror && \
      cd php-7.3.3 && \
      ./configure  --prefix=/usr/local/php  --with-config-file-path=/usr/local/php/etc  --with-png-dir=/usr/local/libpng  --with-jpeg-dir=/usr/local/jpeg  --with-freetype-dir=/usr/local/freetype  --with-zlib-dir=/usr/local/zlib  --with-mcrypt=/usr/local/libmcrypt  --with-libxml-dir=/usr/local/libxml2/  --with-iconv-dir=/usr/local/libiconv  --enable-libxml  --enable-xml  --enable-bcmath  --enable-shmop  --enable-sysvsem  --enable-inline-optimization  --enable-opcache  --enable-mbregex  --enable-fpm  --enable-mbstring=all  --enable-gd-native-ttf  --with-openssl  --enable-pcntl  --enable-sockets  --with-xmlrpc  --enable-zip  --enable-soap  --without-pear  --with-gettext  --enable-session  --with-curl  --enable-ctype  --enable-shared  --with-gd  --with-mysql=mysqlnd  --with-mysqli=mysqlnd  --with-pdo-mysql=mysqlnd && \
      make && \ 
      make install     