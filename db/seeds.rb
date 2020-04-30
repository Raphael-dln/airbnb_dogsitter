require 'faker'

15.times do
  dog = Dog.create!(name: Faker::Creature::Dog.name)
end

15.times do
  dogsitter = Dogsitter.create!(name: Faker::Movies::HarryPotter.character)
end
