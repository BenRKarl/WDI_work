
# gem install twitter

require 'twitter'

# Get those Keys!!!!
# https://dev.twitter.com/

config = {
  :consumer_key    => ENV.fetch('TWITTER_KEY'),
  :consumer_secret => ENV.fetch('TWITTER_SECRETE'),
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


#######################Newstuff###############
require 'twitter'


class Tweet_array # < ActiveRecord::Base

  def self.search(query)
    config = {
      :consumer_key    => ENV['TWITTER_KEY'],
      :consumer_secret => ENV['TWITTER_SECRET']
    }
    client = Twitter::REST::Client.new(config)

    # Returns an array in chronological order of the dates of the past 7 days
    i = 7
    dates_arr = []
    loop do
      dates_arr << Date.today.prev_day(n=i).to_s
      i -= 1
      break if i < 0
    end

    # Stores the number of tweets from each day last week into tweet_count_arr
    n = 0
    @tweet_count_arr = []
    loop do
      @tweet_count_arr << client.search(query + " since:#{dates_arr[n]} until:#{dates_arr[n+1]}").count
      n += 1
    break if n > 6
    end
     @tweet_count_arr
  end

end
