# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shop.destroy_all
User.destroy_all
Review.destroy_all

Shop.create([
    {name: 'Bearclaw Coffee', address: '2460 Washtenaw Ave', city: 'Ann Arbor', state: 'MI', postalcode: '60610', country: 'USA'},
    {name: 'Intelligentsia Coffee', address: '1233 N Wells', city: 'Chicago', state: 'IL', postalcode: '48104', country: 'USA'}
])

User.create([
    {username: 'pallie', password: 'password'},
    {username: 'ryan', password: 'password'}
])

# Review.create([
#     {shop_id: 3, user_id: 1, img: 'https://i.imgur.com/pfqCkB3.png', rate: 4.8, content: 'Fun flavors and location, not very hipster though.'},
#     {shop_id: 4, user_id: 2, img: 'https://i.imgur.com/jNqGwGP.png', rate: 7.2, content: 'Solid coffee, great location, not much seating.'}
# ])