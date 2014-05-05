require 'sinatra'
require 'sinatra/reloader'

get '/' do
	"""
	<form action='/receipts' method='post'>

		<input type='text' name='company' placeholder='Company Name'>
		<input type='text' name='product' placeholder='Good/Service Proviced'>
		<input type='text' name='cost' placeholder='Cost'>

		<input type='submit' value='Submit'>

	</form>
	"""
end

post '/receipts' do

	File.open('receipt.txt','w') do |f|
			f.puts params[:company], params[:product], params[:cost]
	end

	"""
<dl>
	<dt>Company Name:</dt>
	<dd>#{params[:company]}</dd>
	<dt>Good/Service Provided:</dt>
	<dd>#{params[:product]}</dd>
	<dt>Cost:</dt>
	<dd>#{params[:cost]}</dd>
</dl>
Thank you for your patronage!
	"""
end