# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

#Worked with GPT 4.0 and the requirements of the homework to create the below - the Mexico City ones were taken directly from requirements and the others were created by GPT

# Find or create the places to ensure they exist
mexico_city = Place.find_or_create_by(name: 'Mexico City')
charleston = Place.find_or_create_by(name: 'Charleston')
beijing = Place.find_or_create_by(name: 'Beijing')
amsterdam = Place.find_or_create_by(name: 'Amsterdam')

# Seed entries for Mexico City
mexico_city.entries.create([
  { title: 'Ate tacos', description: 'Ate delicious beef tacos in the city center with a group of friends.', posted_on: '2022-01-01' },
  { title: "Lisa and Jim's Wedding", description: 'Accompanied friends from university at their incredible wedding. They served dulce de leche for desert!', posted_on: '2022-01-01' },
  { title: 'Ate tacos again', description: "Got hungry and couldn't resist some street tacos. Got the green salsa!", posted_on: '2022-01-01' }
])

# Seed random entries for Charleston
charleston.entries.create([
  { title: 'Visited the Battery', description: 'Enjoyed a sunny day walking along the Battery, admiring the historic homes.', posted_on: '2022-02-01' },
  { title: 'Ghost Tour', description: 'Took a ghost tour and learned about the city\'s haunted history.', posted_on: '2022-02-02' },
  { title: 'Seafood Delight', description: 'Tasted some amazing local seafood at a waterfront restaurant.', posted_on: '2022-02-03' }
])

# Seed random entries for Beijing
beijing.entries.create([
  { title: 'Great Wall Adventure', description: 'Hiked a less crowded section of the Great Wall. Breathtaking views!', posted_on: '2022-03-01' },
  { title: 'Forbidden City Tour', description: 'Spent the day exploring the vastness of the Forbidden City.', posted_on: '2022-03-02' },
  { title: 'Peking Duck Dinner', description: 'Enjoyed a traditional Peking duck dinner. It was delicious!', posted_on: '2022-03-03' }
])

# Seed random entries for Amsterdam
amsterdam.entries.create([
  { title: 'Canal Cruise', description: 'Took a relaxing cruise through the canals, seeing the city from the water.', posted_on: '2022-04-01' },
  { title: 'Van Gogh Museum', description: 'Spent hours admiring the art at the Van Gogh Museum.', posted_on: '2022-04-02' },
  { title: 'Bike Tour', description: 'Rented bikes and toured the city like a local.', posted_on: '2022-04-03' }
])

