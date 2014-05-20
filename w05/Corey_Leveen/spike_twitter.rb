
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
