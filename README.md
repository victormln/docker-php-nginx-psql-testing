![PHP Version](https://img.shields.io/packagist/php-v/victormln/docker-php-nginx)

# Introduction

Template repository to have PHP + nginx available through a local URL: http://web-server.test

## What is in this template

- PHP-fpm
- php.ini prepared to be edited by your own
- Composer
- Makefile
- Xdebug
- Nginx

## Installation

1. From composer

```shell
$ composer create-project victormln/docker-php-nginx your-project
```

OR with git:

```shell
$ git clone https://github.com/victormln/docker-php-nginx.git your-project
```

2. Install repository

```shell
$ cd your-project
$ make install # It will ask you for your sudo password in order to add to your /etc/hosts the domain
```

3. Start web server:

```shell
$ make start
```

Test website: `https://web-server.test` (you will see all `phpinfo()`)

Now you can edit the file in `public/index.php` and start coding!
