require 'bundler'
Bundler.require

require_relative 'models/author'
require_relative 'models/post'

require_relative 'config'


# RESTFUL ROUTES

# Index
get '/' do
  redirect '/authors'
end

# SHOW AUTHORS
get '/authors' do
  @authors = authors.all
  erb :index
end

# CREATE new AUTHOR
get '/authors/new' do
  erb :new
end
post '/authors' do
  author = Author.create(
    {name: params['name']}
    {age: params['age']}
    {hometown: params['hometown']})
  redirect "/author/#{author.id}"
end

# SHOW specific AUTHOR
get '/authors/:id' do
  @author = Author.find(params[:id])
  erb :'authors/show'
end

# EDIT AUTHOR
get '/author/:id/edit' do
  @author = Author.find(params[:id])
  erb :edit
end
put '/author/:id' do
  author = Author.find(params[:id])
    author.name = params[:name]
    author.age = params[:age]
    author.hometown = params[:hometown]
  author.save
  redirect "/author/#{author.id}"
end


# SHOW specific POST
get '/author/:author_id/posts/:post_id' do
  @post = Post.find(params[:post_id])
  erb :posts/show
end

# CREATE POST
get '/author/:id/posts/new' do
  @author=Author.find(params[:id])
  erb :'posts/new'
end
post '/author/:id/posts' do
  author = Author.find(params[:id])
    title = params[title]
    message = params[message]
    location = params[location]
    new_post = Post.create({message: message}{title: title}{location: location})
  auther.post << new_post
  redirect "/users/#{params[:id]}"
end

# EDIT POST

