# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Celebrity.delete_all
Selfie.delete_all
Comment.delete_all

britney = Celebrity.create({name: 'Britney Spears', age: 30,  
          claim_to_fame: 'Baby one more time', substance_abuse: false})
selfie1 = Selfie.create({num_likes:304_244, location: 'Wynn Las Vegas'})
selfie2 = Selfie.create({num_likes:120_798, location: 'Louisianna'})

britney.selfies << @selfie1
britney.selfies << @selfie2

comment1 = Comment.create({content: 'You are angelic'})
comment2 = Comment.create({content: 'Britney suxx'})
selfie1.comments << @comment1
selfie1.comments << @comment2


