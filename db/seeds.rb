# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

employe = Employee.find 1

employe.update(
    first_name: 'Rizwan Nawaz',
    last_name: 'Muhammad Nawaz',
    email:'rizwannawaz1857@gmail.com',
    country:'Pakistan',
    city:'Tandlianwala',
    address_line_1:'Iqbal Colony',
    pincode:'1212',
    age: 26
)

employe = Employee.create(
    first_name: 'ALI Nawaz',
    last_name: 'Muhammad Nawaz',
    email:'alinawaz1857@gmail.com',
    country:'Pakistan',
    city:'Lahore',
    address_line_1:'Faisel Town C Block',
    pincode:'1212',
    age: 27
)
employe = Employee.new(
    first_name: 'Wafa Nawaz',
    last_name: 'Muhammad Nawaz',
    email:'wafanawaz1857@gmail.com',
    country:'Pakistan',
    city:'Tandlianwala',
    address_line_1:'Iqbal Colony',
    pincode:'1212',
    age: 27
)
employe.save
