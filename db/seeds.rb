# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Item.destroy_all

amia = User.create(name: "Amia")
skyler = User.create(name: "Skyler")
jenny = User.create(name: "Jenny")
toaster = Item.create(name: "Toaster", desc: "Toasts things", price: 19.99)
car = Item.create(name: "Toyota Camry", desc: "I need to sell this piece of junk. 280,000 miles on it.", price: 3999.99)
ceremonial_vase = Item.create(name:"Strange Ceremonial Vase", desc: "Can turn anything placed into it overnight into gold.", price: 10000000000000.00)
