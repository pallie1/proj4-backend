# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Shop.destroy_all
User.destroy_all

Shop.create([
    {name: 'Bearclaw Coffee', address: '2460 Washtenaw Ave', city: 'Ann Arbor', state: 'MI', postalcode: '60610', country: 'USA', coords: '-83.712230 42.259650'},
    {name: 'Intelligentsia Coffee', address: '1233 N Wells', city: 'Chicago', state: 'IL', postalcode: '48104', country: 'USA', coords: '-87.634360 41.904750'},
    {name: 'Trident', address: '940 Pearl St', city: 'Boulder', state: 'CO', postalcode: '80302', country: 'USA', coords: '-105.282890 40.016950'},
    {name: 'Brewing Market', address: '2610 Baseline Rd', city: 'Boulder', state: 'CO', postalcode: '80302', country: 'USA', coords: '-83.689472 42.287104'},
    {name: 'Blackbird', address: '205 Newell St', city: 'Cairns', state: 'QLD', postalcode: '4870', country: 'AU', coords: '145.750412 -16.938242'}
])

User.create([
    {username: 'pallie', password: 'password'},
    {username: 'ryan', password: 'password'},
    {username: 'lizzie', password: 'password'},
    {username: 'millie', password: 'password'}
])

# Review.create([
#     {shop_id: 12, user_id: 4, img: 'https://i.imgur.com/pfqCkB3.png', rate: 4.8, content: 'Fun flavors and location, not very hipster though.'},
#     {shop_id: 13, user_id: 5, img: 'https://i.imgur.com/zS5W0xc.png', rate: 7.2, content: 'Solid coffee, great location, not much seating.'},
#     {shop_id: 14, user_id: 6, img: 'https://i.imgur.com/rZAslxW.png', rate: 8.5, content: "Last coffee for the weekday. Trident coffee. where i hung out in highschool, but have been coming to since I couldn’t see over the counter. It’s inside a Super rad alt. Bookstore. Campos coffee. Milk. Solid 8.5."},
#     {shop_id: 15, user_id: 6, img: 'https://i.imgur.com/LUG02ci.png', rate: 8, content: "Brewing market in my hometown of Boulder, CO. An amazing collection of coffee making machines, chalk menu, hippy deadlock barista (the boulder equivalent of beanies not touching ears). Espresso machine was 'out of whack' was the excuse, coffee was ok. Though, I got to enjoy my coffee in the warm Colorado sun in the same spot my dad and I used to sip Sunday coffees from, so all in all 8/10."},
#     {shop_id: 16, user_id: 7, img: 'https://i.imgur.com/PdU31zl.png', rate: 9.7, content: "Throwing another 9.7 out there because this coffee is darn good. Blackbird in Cairns, far north QLD. This is genuine, unrefined hipster and I love it. Latte art that isn’t compromising on creaminess and strength is hard to come by. Mural game is also strong here"}
# ])

#     {shop_id: 3, user_id: 3, img: '', rate: , content: ''}