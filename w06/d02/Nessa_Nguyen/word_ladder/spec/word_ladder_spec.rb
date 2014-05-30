require_relative '../lib/word_ladder'


describe '#is_neighbor' do
  it 'returns true of the words are neighbors' do
  expect(is_neighbor?('live', 'love')).to be true
  end  
end

describe '#word_ladder_neighbors' do
  it 'returns the correct array of neighbors when given a four-letter word' do
  expect(word_ladder_neighbors('able')).to include("abbe", "ably", "abye", "axle")
  end
end
