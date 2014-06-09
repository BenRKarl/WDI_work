require_relative '../lib/word_ladder'

describe '#is_neighbor?' do
it 'returns true of the words are neighbors.' do
  expect(is_neighbor?("play", "work")).to be true
  end
end

describe '#word_ladder_neighbors' do
	it "returns the correct array of neighbors when given a word." do
	expect(word_ladder_neighbors("")).to include("alae", "alee", "alme", "alow", "floe", "sloe")
  end
end
