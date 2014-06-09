require 'bundler/setup'
Bundler.require


  configure do
    set :sessions, true
  end

  use OmniAuth::Builder do
    provider :twitter, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
  end

  helpers do
    def current_user
      !session[:uid].nil?
    end
  end

  before do
    pass if request.path_info =~ /^\/auth\//
    redirect to('/auth/twitter?force_login=true') unless current_user
  end

  get '/auth/twitter/callback' do
    session[:uid] = env['omniauth.auth']['uid']
    redirect to('/')
  end

  get '/auth/failure' do
    redirect to('/failedlogin')
  end

  get '/' do
    '<h1>Hi there</h1>'
  end




#CONSUMER_KEY=pwYTrOaIRTRCVbAX10VNb41ig
#CONSUMER_SECRET=SSbjKcbbPqPbbqp3NIgDUcckfh28pdhMYUhzPUYoy5jDEVUrzP
#ACCESS_TOKEN=15441877-FgBxbTjQamx78GejZeI5hEbddmBbm2UYi3BWS8GgN
#ACCESS_TOKEN_SECRET=QY1LLOd94YrZ3OFdMz5aalzc1UjxzP6JYMoD3seENsS3R


#BREAKDOWN
# - 1 - In the beginning there's Twitter
# - 1 - Register your app on Twitter
# - 1 - Yields a Key and a Secret
# - 2 - Build the App (sinatra, rails, etc.)
# - 3 - Provide authenticate url (auth_url)
# - 3 - Provide callback url (where does the service go back to)
# - 4 - Add OmniAuth to the picture. Strategies are mostly implementations built on top of OmniAuth.
  # - 4 - auth/:provider
  # - 4 - auth/:provider/callback
