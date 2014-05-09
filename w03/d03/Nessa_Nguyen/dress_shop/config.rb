ActiveRecord::Base.establish_connection(
ENV['DATABASE_URL'] || 
{ :adapter  => "postgresql",
	:database => "dress_shop"
})
