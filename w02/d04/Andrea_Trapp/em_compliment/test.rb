post '/names' do 
	name = params["name"]	

	greetings = ["Mornin!","How are you?","Good to see you."]
	compliments = ["What a nice outfit!!","You look cool today!","You are sooo sweet."]

	greeting = greetings.sample.gsub(" ","%20")
	compliment = compliments.sample.gsub(" ","%20")

	redirect "/names?name=#{name}&greeting=#{greeting}&compliment=#{compliment}"
end