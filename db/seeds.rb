# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Order.destroy_all
Product.destroy_all
Category.destroy_all

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

c = Category.create(name: "Teléfono")
p1 = Product.create(name: "Galaxy 6", price: 2345, stock: 10, category: c, created_at: (Time.now - 1.day))
p2 = Product.create(name: "Galaxy 5", price: 2345, stock: 5, category: c, created_at: (Time.now - 3.day))
p3 = Product.create(name: "Iphone 6", price: 2345, stock: 10, category: c, created_at: (Time.now - 5.day))

c = Category.create(name: "Notebooks")
p4 = Product.create(name: "Macbook Pro", price: 2345, stock: 20, category: c)

u1 = User.create(email: "User 1", password: "12345678")
u2 = User.create(email: "User 2", password: "12345678")
u3 = User.create(email: "User 3", password: "12345678")
u4 = User.create(email: "User 4", password: "12345678")
u5 = User.create(email: "User 5", password: "12345678")

Order.create(user: u1, product: p1)
Order.create(user: u1, product: p2)
Order.create(user: u1, product: p3)
Order.create(user: u2, product: p1)
Order.create(user: u2, product: p4)
Order.create(user: u2, product: p3)
Order.create(user: u2, product: p1)
Order.create(user: u2, product: p2)
Order.create(user: u3, product: p3)
Order.create(user: u3, product: p1)
Order.create(user: u3, product: p4)
Order.create(user: u3, product: p4)
Order.create(user: u4, product: p3)
Order.create(user: u4, product: p1)
Order.create(user: u5, product: p4)
