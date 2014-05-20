require 'twitter'

config = {
  :consumer_key    => ENV.fetch('TWITTER_KEY'),
  :consumer_secret => ENV.fetch('TWITTER_SECRET'),
}

client = Twitter::REST::Client.new(config)

client.search("to:taylorswift13 i knew you were trouble", :result_type => "recent").take(10).each do |tweet|
  puts tweet.text
end

