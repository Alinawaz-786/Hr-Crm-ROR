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
*  rails g devise:controllers admins

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
