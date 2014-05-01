require 'bundler/setup'
Bundle.require

get '/' do
	erb :root
end

