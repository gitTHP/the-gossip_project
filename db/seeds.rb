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
    cities.push(City.create(name:Faker::String.random(length:3..12),zipcode:"10001"))
end
users=[] 
10.times do |i| 
    users.push(User.create(firstname:Faker::Name.name,lastname:Faker::Name.name,email:Faker::Internet.email,description:Faker::Lorem.sentence(word_count: 50),age:Faker::Number.number(digits:3),city:cities[i]));
end 

gossips=[] 

10.times do |i|
    gossips.push(Gossip.create(title:Faker::Lorem.sentence(word_count:2), content:Faker::Lorem.sentence(word_count:20),user:users[i]));
end 

likes=[] 

10.times do |i|
    likes.push(Like.create(gossip:gossips[i]))
end

comments=[]
10.times do |i| 
    comments.push(Comment.create(content:Faker::Lorem.sentence(word_count:50),gossip:gossips[2]))
end 

tags=[] 

10.times do |i|
    tags.push(Tag.create(title:Faker::Lorem.sentence(word_count:2)))
end 

tags_gossips=[]
10.times do |i|
    tags_gossips.push(TagsGossip.create(tag:tags[i],gossip:gossips[i]))
end 

private_messages=[]


10.times do |i|
    private_messages.push(PrivateMessage.create(content:Faker::Lorem.sentence(word_count:5),user:users[i]))
end  

private_message_users=[]

10.times do |i|
    private_message_users.push(PrivateMessageUser.create(user:users[2],private_message:private_messages[i]))
end 

puts "TEST PRIVATE MESSAGE USER"

private_messages.each do |message|
    puts "GET MESSAGE USER"
    puts message.users

end 

gossips.each do |gossip|
 puts "GET GOSSIP TAG"
 puts gossip.tags
end





