require 'Bundler/setup'
Bundler.require

get '/' do
  erb :index
end

get '/receipts' do
  @company = params[:company]
  @provided = params[:provided]
  @cost= params[:cost]
  erb :receipts
end

@new_receipt = []
  name :company,
  provided :provided,
  cost :cost
]

def append_receipt
  File.puts('receipts.txt', 'a+') do
    puts @new_receipt
  end
end