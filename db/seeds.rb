# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts ""

Flat.destroy_all
puts "Database cleaned"

puts "Creating flats"
spring = {
  name: 'Bright House in Hackney',
  address: '26 Brick Lane London E1 6RF',
  description: 'Lots of natural sunlight and only a short walk to Beigel Bake.',
  price_per_night: 125,
  number_of_guests: 4
  }
summer = {
  name: 'Light & Spacious Garden Flat in London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat.',
  price_per_night: 75,
  number_of_guests: 3
  }
autumn = {
  name: 'Draughty basement in Stockwell',
  address: '18 Mobey Court Stockwell SW4 6RS',
  description: 'Ramshackle basement flat with a cool breeze.',
  price_per_night: 20,
  number_of_guests: 2
}
winter = {
  name: 'Cosy cottage in Camberwell',
  address: '85 Denmark Hill London SE5 8AA',
  description: 'Detached house with roaring fire and plenty of logs.',
  price_per_night: 100,
  number_of_guests: 5
}
[ spring, summer, autumn, winter ].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
