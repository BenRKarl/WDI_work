
# gem install twitter

require 'twitter'

# https://dev.twitter.com/


config = {
  :consumer_key    => "YOUR_CONSUMER_KEY",
  :consumer_secret => "YOUR_CONSUMER_SECRET",
}

client = Twitter::REST::Client.new(config)


client.search("to:justinbieber marry me", :result_type => "recent").take(3).each do |tweet|
  puts tweet.text
end


