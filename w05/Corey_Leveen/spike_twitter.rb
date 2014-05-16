
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


# For heroku
#  Spike on heroku config


class Tweet # < ActiveRecord::Base

  def self.search(query)
    config = {
      :consumer_key    => ENV['TWITTER_KEY'],
      :consumer_secret => ENV['TWITTER_SECRET']
    }
    client = Twitter::REST::Client.new(config)

    client.search(query, :result_type => "recent")

  end

end



# Make sure you understand what these commands do:
# Read about heroku config
# heroku config
# heroku config BANANA='joy'
