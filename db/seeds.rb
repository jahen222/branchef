# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts '------------------------'
puts '...Create Membership....'
puts '------------------------'
Membership.destroy_all
Membership.create(name: "Buffet Lux", months: 2, services: 3, clients_max: 4, base_discount: 15, dish_discount: 5, dishes_max: 2, no_dishes_max: 2, price: 100000.0)
Membership.create(name: "Buffet Lux Delivery", months: 3, services: 6, clients_max: 5, base_discount: 15, dish_discount: 7, dishes_max: 2, no_dishes_max: 3, price: 150000.0)
Membership.create(name: "Brunch Lux Delivery", months: 3, services: 6, clients_max: 5, base_discount: 15, dish_discount: 7, dishes_max: 2, no_dishes_max: 3, price: 200000.0)

puts '------------------------'
puts '...Create Admin User....'
puts '------------------------'
Admin.destroy_all
user_admin = Admin.new(email: "admin_branchef@nokoarts.com" , password: "12345678", :password_confirmation => "12345678")
user_admin.save!
