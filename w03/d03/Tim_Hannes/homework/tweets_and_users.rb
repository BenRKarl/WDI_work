require 'pg'
require 'active-record'

#connect to database
database_name = "wdi_twitter_db"
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")

#define your models
class tweet < ActiveRecord::Base
  belongs_to :user
end

class user < ActiveRecord::Base
  has_many :tweets
end

#test out the association methods!!
my_user = User.create({username: 'Josh'})
my_tweet = Tweet.create({tweet: 'We bout this life, ya heard?'})
my_user.tweets << my_tweet

#did it work?
puts "User:       "+ my_user.username
puts "Tweet:      "+ my_user.tweets.first.tweet
