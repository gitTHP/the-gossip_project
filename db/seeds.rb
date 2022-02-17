# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first) 

require 'faker'
City.delete_all
User.delete_all
Gossip.delete_all 
Like.delete_all 
Comment.delete_all 
Tag.delete_all
TagsGossip.delete_all
PrivateMessage.delete_all 
PrivateMessageUser.delete_all


cities=[] 


10.times do 
    cities.push(City.create(name:Faker::Lorem.sentence(word_count:1),zipcode:"10001"))
end




