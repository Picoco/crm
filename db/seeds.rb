# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CATEGORIES = [ "not-contacted", "on-going", "called"]
GRADES = [ 1, 2, 3, 4, 5 ]

# puts "destoying seed"
# Contact.destroy_all
# State.destroy_all
# puts "seed destroyed"
puts "Creating User"

user = User.create!(email: "a@hotmail.fr", password: "123456")

puts "User created"

puts "--------------------"

puts "Creating States"


states = State.create!([{ category: "not-contacted"}, {category: "on-going"}, {category: "called"}])

puts "States created"

puts "--------------------"

puts "Creating contacts ..."


contacts = [
  {email: "pierre-cohen@hotmail.fr", number: "+33621484296", first_name: "Pierre", last_name: "Cohen", address: "Paris", grade: GRADES.sample},
  {email: "alicia.yahiaoui@gmail.fr", number: "+33607984356", first_name: "Alicia", last_name: "Yahiaoui", address: "Fontenay-sous-Bois", grade: GRADES.sample},
  {email: "coco.clyde@outlook.com", number: "+33765454323", first_name: "Coco", last_name: "Clyde", address: "Montreuil", grade: GRADES.sample},
  {email: "alain.cohen@gmail.com", number: "+33664740067", first_name: "Alain", last_name: "Cohen", address: "Villejuif", grade: GRADES.sample}]

contacts.each do |contact|
  contact_seed = Contact.new(contact)
  contact_seed.user = user
  contact_seed.state = states.sample
  contact_seed.save!
end

puts "finished!"
