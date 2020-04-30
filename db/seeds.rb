require 'faker'

10.times do
  city = City.create!(city_name: Faker::Movies::HarryPotter.location)
end

15.times do
  dog = Dog.create!(doggy_name: Faker::Creature::Dog.name, city: City.all.sample)
end

15.times do
  dogsitter = Dogsitter.create!(full_name: Faker::Movies::HarryPotter.character, city: City.all.sample)
end

10.times do
  stroll = Stroll.create!(date: Faker::Time.forward(days: 150, period: :day), dogsitter: Dogsitter.all.sample, city: City.all.sample)
end

100.times do
  outing = Outing.create!(dog: Dog.all.sample, stroll: Stroll.all.sample, city: City.all.sample)
end



