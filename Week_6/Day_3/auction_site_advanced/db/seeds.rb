# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User.create(name: "Valentine", email: "valentine.barbierm@gmail.com", password: "vbm")
# User.create(name: "Marie", email: "marie.barbierm@gmail.com", password: "mbm")
# User.create(name: "Zoé", email: "zoe.barbierm@gmail.com", password: "zbm")
# User.create(name: "Sophie", email: "sophie.barbierm@gmail.com", password: "zbm")

Product.create(title: "Iphone 6+", description: "Perfect condition", deadline: 10.days.from_now, user_id: 1, minimum_bid: 300)
