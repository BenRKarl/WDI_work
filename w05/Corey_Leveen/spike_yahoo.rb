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

# Returns trading data for Google for the last 7 days in an array of objects
YahooFinance.historical_quotes("GOOG", Time::now-(24*60*60*10), Time::now, { raw: false, period: :daily }).take(7)

# Returns an array of average share price for a company for the week
def price_history(ticker)

# Assigns an array of price objects for the last seven days to obj_arr
 obj_arr = YahooFinance.historical_quotes("#{ticker}", Time::now-(24*60*60*10), Time::now, { raw: false, period: :daily }).take(7)

  avg_arr = []

  obj_arr.each do |x|
    avg_arr << (x.high + x.low)/2.to_i
  end

  avr_arr
end
