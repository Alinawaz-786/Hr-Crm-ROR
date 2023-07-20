# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
# README
## HR-CRM

rails new hr-crm
bundle install

## Create Model
* rails g model employee first_name:string last_name:string email country city address_line_1 pincode age:integer
* rails db:migrate
## Open console (fellow command to use the console for Databse)
* rails c 
* reload! (reload console)
* employe.valid?
* employe.errors.present?
* employe.errors
* employe.errors.full_messages

## Resource Root
* rails routes | grep employees

## Generate Controller 
* rails g controller employees (optional given name of method generat by command)

## Commented Trubo Before Save fucntion use
* Reason is that If any function not found then error message disply on Browser screen 
* Path
* 'app/javascript/application.js'

## Destory time pin install in window
* ruby bin/importmap pin rails-ujs

## Create One to Many Realtionship in table

* rails g model documents name doc_type employee:references

## Attachment Add with files
* rails active_storage:install
* rails db:migrate

## rollback DB and Remove model
* rails db:rollback
* rails g model demo text,images
* rails d model demo text,images
* rails g migration add_columns_to_employees
* rails d migration add_columns_to_employees
* rails g migration rename_employee_bio_attr

## Devise
*  bundle add devise
*  rails generate devise:install
*  rails g devise user
*  rails db:migrate
*  rails db:create
*  rails g devise:controllers admins
*  rails g devise:views admins

## Install MySql
*  Create Project rails new cms -d mysql
*  Use this to download install and zip file https://dev.mysql.com/downloads/mysql/
*  Use lib file of mysql-zip from ruby directory in mysql folder.
*  Run this command gem install mysql2 --, '--with-mysql-lib="C:\mysql2\lib"  --with-mysql-include="C:\mysql2\include"'
*  rails generate model Publisher first_name:string  last_name:string email:strin gander: strind country:string city:string address:string  dob:data age:integer
*  rails generate controller Publishers index show new create edit update destroy
*  rails generate controller Articles index show new create edit update destroy
*  rails g model articles act_header act_body act_type publish_date:date  publisher:references
*  rails g model documents name doc_type article:references


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
