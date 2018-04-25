# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

[#<Listing id: 1, author: "Oski Bear", price: 1550, open_spots: 1, street: "140 Market St", city: "San Francisco", distance: nil, start_date: "2018-08-01", end_date: "2019-01-01", rating: 4, description: "1 double bedroom, in 2 bedroom house; includes: wa...", created_at: "2018-04-24 04:16:10", updated_at: "2018-04-24 05:14:48", lat: 0.377923794197085e2, lng: -0.122397221780292e3, user_id: nil, image: nil>, #<Listing id: 2, author: "Queen B", price: 1650, open_spots: 1, street: "20 Mission St", city: "San Francisco", distance: nil, start_date: "2018-05-30", end_date: "2019-01-01", rating: 4, description: "Nice 1 bedroom single, in 3 bedroom house, is full...", created_at: "2018-04-24 04:26:56", updated_at: "2018-04-24 05:15:57", lat: 0.37793248e2, lng: -0.122393184e3, user_id: nil, image: nil>, #<Listing id: 3, author: "J.Cole", price: 1000, open_spots: 1, street: "2516 Piedmont Ave", city: "Berkeley", distance: nil, start_date: "2018-05-15", end_date: "2019-01-15", rating: 4, description: "1 spacious double bedroom, needs subletter for fal...", created_at: "2018-04-24 04:32:51", updated_at: "2018-04-24 05:42:05", lat: 0.37865208e2, lng: -0.122251884e3, user_id: nil, image: nil>, #<Listing id: 4, author: "Cardi B", price: 1250, open_spots: 1, street: "2515 Benvenue Ave", city: "Berkeley", distance: nil, start_date: "2018-06-30", end_date: "2019-01-15", rating: 5, description: "1 single bedroom, in a 3 bedroom house; nice setup...", created_at: "2018-04-24 04:36:40", updated_at: "2018-04-24 05:41:19", lat: 0.3786467e2, lng: -0.122254907e3, user_id: nil, image: nil>, #<Listing id: 5, author: "Drake", price: 1200, open_spots: 1, street: "1 Orchard Lane", city: "Berkeley", distance: nil, start_date: "2018-05-15", end_date: "2018-08-15", rating: 4, description: "1 bedroom double, but basically a single with room...", created_at: "2018-04-24 04:39:15", updated_at: "2018-04-24 05:35:34", lat: 0.37869176e2, lng: -0.122249499e3, user_id: nil, image: nil>, #<Listing id: 6, author: "Oski Bear", price: 1100, open_spots: 1, street: "2226 Durant Ave", city: "Berkeley", distance: nil, start_date: "2018-05-15", end_date: "2018-08-15", rating: 5, description: "beary nice 1 bedroom single for the summer, close ...", created_at: "2018-04-24 22:33:14", updated_at: "2018-04-24 22:33:14", lat: nil, lng: nil, user_id: 2, image: "Pasted_Graphic.png">, #<Listing id: 7, author: "Oski Bear", price: 1100, open_spots: 1, street: "2226 Durant Ave", city: "Berkeley", distance: nil, start_date: "2018-04-24", end_date: "2018-04-24", rating: 5, description: "beary nice 1 bedroom single for the summer, near d...", created_at: "2018-04-24 23:00:31", updated_at: "2018-04-24 23:00:31", lat: nil, lng: nil, user_id: 2, image: "Pasted_Graphic.png">]


[['Oski Bear', '140 Market St', 'San Francisco', '2018-08-01', '2019-01-01', "1 double bedroom, in 2 bedroom house; includes: washer & dryer", 'https://upload.wikimedia.org/wikipedia/commons/c/c7/House_at_1329_Carroll_Ave.%2C_Los_Angeles_%28Charmed_House%29.JPG'],
['Furry Boi', '20 Mission St', 'San Francisco', '2018-05-30', '2019-01-01', "Nice 1 bedroom single, in 3 bedroom house, is fully furnished with plenty of amenities", 'https://goo.gl/images/Kqy8s5'],
['Josh Hug', '2516 Piedmont Ave', 'Berkeley', '2018-06-01', '2019-01-01', "1 spacious double bedroom, needs subletter for fall, friendly roomates, free utilities", 'https://goo.gl/images/Kqy8s5'],
['Josh Hug', '2516 Piedmont Ave', 'Berkeley', '2018-06-01', '2019-01-01', "1 spacious double bedroom, needs subletter for fall, friendly roomates, free utilities", 'https://goo.gl/images/Kqy8s5'],


].each do |author, street, city, start_date, end_date, description, image|
  Listing.create(
    author: author,
    price: rand(500..1500),
    open_spots: rand(1..7),
    street: street,
    city: city,
    start_date: start_date,
    end_date: end_date,
    rating: rand(0..10),
    description: description,
    image: image,
    lat: 0,
    lng: 0,
  )
end
