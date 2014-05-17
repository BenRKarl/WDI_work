
# gem install twitter

require 'twitter'

# https://dev.twitter.com/


config = {
  :consumer_key    => ENV['TWITTER_KEY'],
  :consumer_secret => ENV['TWITTER_SECRET']
}

client = Twitter::REST::Client.new(config)


client.search("to:justinbieber marry me", :result_type => "recent").take(3).each do |tweet|
  puts tweet.text
end

# Fetch the timeline of Tweets mentioning the authenticated user
# For heroku
#  Spike on heroku config
# created_at

class Tweet # < ActiveRecord::Base

  def self.search(query)
    # should config be used everytime I do a search?
    config = {
      :consumer_key    => ENV['TWITTER_KEY'],
      :consumer_secret => ENV['TWITTER_SECRET']
    }
    client = Twitter::REST::Client.new(config)

    client.search(query, :result_type => "recent")

  end

end

######

Tweet.search('Monkeys')

# Make sure you understand what these commands do:
# Read about heroku config
# heroku config
# heroku config BANANA='joy'



#Without result type
class Tweet # < ActiveRecord::Base

  def self.search(query)
    # should config be used everytime I do a search?
    config = {
      :consumer_key    => ENV['TWITTER_KEY'],
      :consumer_secret => ENV['TWITTER_SECRET']
    }
    client = Twitter::REST::Client.new(config)

    client.search(query)

  end

end

client.search("#bloomberg", :date => "2014,4,15").take(5)
# Prints dates
Tweet.search('Goldman').each do |x|
 y = x.created_at
 puts y
end
