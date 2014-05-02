require 'bundler/setup'
Bundler.require

def append_receipt
  open('receipts.txt', 'a') { |f|
  f << "Four score\n"
  f << "and seven\n"
  f << "years ago\n"
}
end


get '/' do
  erb :index
end

post '/receipts' do
  redirect '/'
 end

