require 'spec_helper'

describe Planet do
  it 'can talk about itself' do
  planet=Planet.create({name: 'Earth'})
  planet.to_s.to eq "I'm Earth."
  end
end
# describe Movie do
#   it 'returns an array of movies' do
#     movies = Movie.search('The Matrix')
#     expect(movies.length).to eq 10
#   end