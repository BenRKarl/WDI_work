require_relative '../lib/word_ladder'

describe '#js_neighbor?' do
  it 'returns true if the words are neighbors.' do
      expect(is_neighbor?('live','love')).to be true
  end  
end

describe '#word_ladder_neighbors' do
  it "returns the correct array of neighbors when given an word." do
      expect(word_ladder_neighbors("aloe")).to include('alae', 'alee', 'alme', 'alow', 'floe', 'sloe')
    end
  end


