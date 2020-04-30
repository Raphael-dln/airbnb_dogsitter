require 'faker'


5.times do
  city = City.create!(city_name: Faker::Movies::HarryPotter.location)
end


120.times do
  dog = Dog.create!(doggy_name: Faker::Creature::Dog.name, city: City.all.sample)
end

50.times do
  dogsitter = Dogsitter.create!(full_name: Faker::Movies::HarryPotter.character, city: City.all.sample)
end

100.times do
  stroll = Stroll.create(date: Faker::Time.forward(days: 150, period: :day), city: City.all.sample)
  stroll.dogsitter = Dogsitter.where("city_id like ?", "%#{stroll.city_id}%").sample
  stroll.save
end

# Création des groupes de chiens pour faire le lien entre les tables strolls / dogs
100.times do
  outing = Outing.create(city: City.all.sample)
  outing.stroll = Stroll.where("city_id like ?", "%#{outing.city_id}%").sample
  outing.dog = Dog.where("city_id like ?", "%#{outing.city_id}%").sample
  outing.save
end




