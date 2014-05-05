require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

post '/receipts' do
  path = "receipts.txt"
  company_names = params[:company_name]
  services = params[:services]
  costs = params[:cost]

  @content = "Company Name: #{:company_name}, Good/Service Provided: #{:service}, Cost: #{:cost}"
  File.open(path, "w+") do |f|
    f.write(@content)
  end

  redirect '/receipts'
end

get '/receipts' do
  @name=params[:company_name]
  @content
  erb :show
end



# def parse_comments
#   comments_from_form = params['myform']['comments']
#     #do your stuff with comments_from_form here
# end
# <h1>Text to PDF </h1>
# <% form_tag :action => 'parse_comments' do %>
#     <%= text_area :myform, :comments, :cols => '40', :rows => '5' %>
#     <%= submit_tag "Submit" %>
# <% end %>
