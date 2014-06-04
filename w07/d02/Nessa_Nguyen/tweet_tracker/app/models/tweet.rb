class Tweet < ActiveRecord::Base

  def self.get_tweets(username)
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "P69nzcI8IPsCaBy43EzLft5Hq"
      config.consumer_secret     = "f21dxHv11ByIyctkrtBsVVUMIcuh2hJwbgzv2VeedbkeZnEGdE"
    end  

    tweet_array = client.user_timeline(username)
    results = tweet_array.map do |tweet|
      if tweet.urls[0] != nil
        {handle: username,
         content: tweet.text, 
         url: tweet.urls[0].expanded_url.to_s}
      else 
        {handle: username,
         content: tweet.text}
      end  
    end
    return results
  end

end

#  def get_following(username)
#    following = client.friends('_myfashionhub')
#    following.first.screen_name
#    following.to_a[index].screen_name
#  end

#Twitter::Tweet
#tweet.media
#tweet.id
#tweet.user_mentions[index].screen_name
#tweet.hashtags[index].text
#link: tweet.urls[index].expanded_url.to_str
