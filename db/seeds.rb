# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:          'The Taco Stand',
    address:       'Along Pearl Ave.',
    phone_number:  '123456789',
    category:      'chinese'
  },
  {
    name:         'Chori',
    address:      'Thames, near the graffiti alley',
    phone_number: '987654321',
    category:     'italian'
  },
  {
    name:         'Bobboi',
    address:      'Some corner in La Jolla',
    phone_number: '567891234',
    category:     'japanese'
  },
  {
    name:         'Dick\'s Burgers',
    address:      'Seattle and Spokane',
    phone_number: '891234567',
    category:     'french'
  },
  {
    name:         'Geoffrey\'s Diner',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '345678912',
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
