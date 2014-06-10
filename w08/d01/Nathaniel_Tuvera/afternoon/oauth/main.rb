require 'sinatra'

helpers do
  def admin?
    true
  end
end

get '/public/' do
  "This is the public page - no login in required"
end

def '/private/' do
  halt(401,'NotAuthorizd') unless admin?
  "This is the private page -- please log in"
end
