require 'bundler'
Bundler.require

#require 'lib/countries.erb'
#require '.lib/module_musicbrainz'


get '/' do
  erb :root
end

get '/artist' do
  @artist = params[:artist].gsub(' ','+')


  #find artist data in Musicbrains
    url = "http://musicbrains.org/ws/2/artist?query="+(@artist).to_s
    response = HTTParty.get(url)
    data =response['metadata']['artist_list']['artist']

  #isolate down to countries
    countries = data.map {|artist| artist['country']}
    @undefin = countries.count(nil)
    countries.delete(nil)
    @countries = countries

  #and sort!!
  country_count = {}
  countries.each do |country|
    if country_count.has_key?(country)
      country_count[country] += 1
    else
      country_count[country] = 1
    end
  end
  @country_count = country_count

  #and show.
  @keys = country_count.keys
  @values = country_count.values

#AND HERE'S STEP TWO!!!
  #turn countries.erb list into array

  #find the data in the array


  erb :show
end



