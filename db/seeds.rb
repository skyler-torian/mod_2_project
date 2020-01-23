# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Item.destroy_all
Bid.destroy_all
UserItem.destroy_all

amia = User.create(name: "Amia", username: "Sneakerhead12")
skyler = User.create(name: "Skyler", username: "skyler1")
jenny = User.create(name: "Jenny", username:"Jbug99")
brook = User.create(name: "Brook", username: "brook9382")
toaster = Item.create(name: "Toaster", desc: "Toasts things", price: 19.99)
car = Item.create(name: "Toyota Camry", desc: "I need to sell this piece of junk. 280,000 miles on it.", price: 3999.99)
ceremonial_vase = Item.create(name:"Strange Ceremonial Vase", desc: "Can turn anything placed into it overnight into gold.", price: 10000000000000.00)

amia_item = UserItem.create(owner_id: amia.id, item_id:toaster.id)
