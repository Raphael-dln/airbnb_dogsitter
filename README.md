# README
This is <bold>Airbnb dogsitters</bold>, the new app to helps your dog enjoying strolls !

# Here is what you should know about this fantastic project

# Versions
* Ruby version 2.5.1
* Rails version 5.2.4

# Relation between tables
* Dogsitter - Dog : n - n
* Dogsitter - Stroll : 1 - n
* Dog - Stroll : n - n
* Dog - Outing : n - 1 (creation of Outing as join table)
* Stroll - Outing : n - 1
* Dogsitter - City : n - 1
* Dog - City : n - 1 
* Stroll - City : n - 1


# Run tests
* $ rails db:seed
* $ tp a = Dogsitter(11)
* $ tp a.dogs
* $ tp a.strolls
* $ tp Outing.all

# Gem
* table_print: You can use "tp" to visualize the information as tables
* faker: To create a fake database