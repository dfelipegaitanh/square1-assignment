# Diego Gaitán Challenge

------------

## Laravel 5.8 Requirements

* PHP >= 7.1.3
* BCMath PHP Extension
* Ctype PHP Extension
* JSON PHP Extension
* Mbstring PHP Extension
* OpenSSL PHP Extension
* PDO PHP Extension
* Tokenizer PHP Extension
* XML PHP Extension

## How to Install

1. Install [Composer](https://getcomposer.org/download/ "Composer")
2. composer install

------------

#### Modify .env file

**Database configuration**
```dotenv
DB_DATABASE=dbname
DB_USERNAME=db_user
DB_PASSWORD=
```

------------

## Database

#### Via Console

Use the file that is located in */PROJECT_NAME/database/sql/database.sql*
> mysql -u db_user -p <  /PROJECT_NAME/database/sql/database.sql

#### Using Laravel Migrations

Create the database "***dbname***" 
> mysql -u db_user -p > create database dbname

Run these commands in the console
```shell
php artisan migrate
php artisan db:seed
```

------------
Once you enter the application and go to the path */login* you can use this credentials
```html 
email: "user@example.com"
password: "password"
```

------------

There will be several users in the table ***users***  that you can use as well. The password for these users are ***"password"***

------------

#### Fresh Database

Run this commands in the console
```shell
php artisan migrate:fresh
php artisan db:seed
```