require_relative '../lib/word_ladder'

describe '#is_neighbor?' do
  it 'returns true if the words are neighbors.' do
      actual = is_neighbor?('walk', 'wall')
      expected = true
    expect(actual).to eq expected
  end
end

describe '#is_neighbor?' do
  it 'returns true if the words are neighbors.' do
      actual = is_neighbor?('live', 'love')
      expected = true
    expect(actual).to eq expected
  end
end


describe '#is_neighbor?' do
  it 'returns false if the words are not neighbors.' do
      actual = is_neighbor?('loot', 'love')
      expected = false
    expect(actual).to eq expected
  end
end

describe '#word_ladder_neighbors' do
  it 'returns the correct array of neighbors when given a word.' do
    expect(word_ladder_neighbors('aloe')).to include("alae", "alee", "alme", "alow", "floe", "sloe")
  end

end


