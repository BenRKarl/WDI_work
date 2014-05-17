spike_yahoo.rb


# This returns the dates of the past week in an array, sorted oldest to newest
i = 7
last_weeks_dates = []
loop do
  last_weeks_dates << Date.today.prev_day(n=i)
  i -= 1
  break if i < 1
end
arr


# gem install 'yahoo-finance'
# require 'yahoo_finance'

# Returns trading data for Google for the last 8 days in an array of objects
YahooFinance.historical_quotes("GOOG", Time::now-(24*60*60*10), Time::now, { raw: false, period: :daily })

