

require 'bundler/setup'
Bundler.require

get '/' do 

  erb :index
end

get '/links' do 

  @arr = get_text('assets/links.csv')
  
  


  erb :show
end

def get_text(filename)
  f = File.open(filename, 'r')
  text_arr = f.readlines
  f.close
  text_arr

end
