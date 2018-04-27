# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


[['Oski Bear', '140 Market St', 'San Francisco', '2018-08-01', '2019-01-01', "Several rooms available, includes: washer & dryer", 'https://upload.wikimedia.org/wikipedia/commons/c/c7/House_at_1329_Carroll_Ave.%2C_Los_Angeles_%28Charmed_House%29.JPG'],
  ['Furry Boi', '20 Mission St', 'San Francisco', '2018-05-30', '2019-01-01', "Nice set of singles, is fully furnished with plenty of amenities", 'https://goo.gl/images/uFkVxc'],
  ['Josh Hug', '2516 Piedmont Ave', 'Berkeley', '2018-06-01', '2019-01-01', "Filling out singles spots, needs subletter for fall, friendly roomates, free utilities", 'https://goo.gl/images/Kqy8s5'],
  ['Rails Lover', '2400 Durant Ave', 'Berkeley', '2018-08-15', '2019-06-01', 'Open 250sqft bedrooms, comes with furniture, TV, and free internet', 'https://goo.gl/images/Hs7Vzz'],
  ['Stanford Tree', '2490 Channing Way', 'Berkeley', '2018-08-15', '2019-06-01', 'Looking to leave Berkeley... need to fill a few rooms', 'https://goo.gl/images/pohFnd'],
  ['Hell Yeah Guy', '2807 Telegraph Ave', 'Berkeley', '2018-04-15', '2019-07-12', 'Looking for some housemates!!', 'https://goo.gl/images/44vidD'],
  ['Bob', '2515 Durant Ave', 'Berkeley', '2018-08-15', '2019-06-01', 'Comes with access to yard & grill, comes with box springs and matresses', 'https://goo.gl/images/ud5K8b'],
  ['Michelle', '2226 Durant Ave', 'Berkeley', '2018-04-24', '2019-06-01', 'Plenty of spacious rooms!', 'https://goo.gl/images/gHGP8n'],
  ['Drake', '548 Market St', 'San Francisco', '2018-06-24', '2019-06-01', 'Great deal considering the amount of space, snatch it up before it is gone!', 'https://goo.gl/images/XUH7a3'],
  ['Tyson', '1450 Sutter St', 'San Francisco', '2018-04-24', '2019-03-24', 'Plenty of spacious rooms!', 'https://goo.gl/images/g9P49h'],
  ['Paul', '500 Terry A Francois Blvd', 'San Francisco', '2018-06-14', '2019-08-15', 'Join some college students in this roomy apartment with 3 bathrooms!', 'https://goo.gl/images/x8QtCe'],
  ['Heather', '270 Brannan St', 'San Francisco', '2018-07-01', '2019-06-01', 'Full kitchen, multiple bathrooms, great deal', 'https://goo.gl/images/QWzku5'],
  ['Hannah', '400 Howard St', 'San Francisco', '2018-08-01', '2019-06-01', 'Close to BART Station and lots of room!', 'https://goo.gl/images/PpP4PL'],
  ['Dylan', '400 Howard St', 'San Francisco', '2018-10-01', '2019-10-01', 'Friendly environment, comes with parking space and covered water bill!', 'https://goo.gl/images/7geDFN'],
  ['Sean', '140 Montgomery St', 'San Francisco', '2018-5-01', '2019-03-15', 'Comes with laundry machine access and close to public transportation!', 'https://goo.gl/images/8HfqUr']].each do |author, street, city, start_date, end_date, description, image|
  a=Geokit::Geocoders::GoogleGeocoder.geocode street +', '+ city
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
    lat: a.lat,
    lng: a.lng
  )
end

# Make Subletters
[['Roger Federer', 'federer@berkeley.edu',  Date.new(2018,4,29),  Date.new(2018,6,14)],
 ['Rafael Nadal', 'nadal@berkeley.edu',  Date.new(2018,5,12),  Date.new(2018,8,18)],
 ['Alexander Zverev', 'zverev@berkeley.edu',  Date.new(2018,6,23),  Date.new(2018,12,12)],
 ['Marin Cilic', 'cilic@berkeley.edu',  Date.new(2018,8,27),  Date.new(2018,9,20)],
 ['Grigor Dimitrov', 'dimitrov@berkeley.edu',  Date.new(2018,10,6),  Date.new(2018,10,6)],
 ['Juan DelPotro', 'delpotro@berkeley.edu',  Date.new(2018,10,23),  Date.new(2018,11,4)],
 ['Dominic Thiem', 'thiem@berkeley.edu',  Date.new(2018,11,14),  Date.new(2018,11,6)],
 ['Kevin Anderson', 'anderson@berkeley.edu',  Date.new(2018,11,29),  Date.new(2018,11,30)],
 ['John Isner', 'isner@berkeley.edu',  Date.new(2018,12,1),  Date.new(2018,12,23)]].each do |name, email, startDate, endDate|
  Subletter.create(
    name: name,
    email: email,
    startDate: startDate,
    endDate: endDate,
    password: "password",
    password_confirmation: "password",
    )
end
