require 'spec_helper'

describe Book do
  it 'should return the title/author' do
    moby = Book.new({title: 'Moby Dick', author: 'Herman Melville'})
    actual = moby.to_s
    expected = 'Moby Dick by Herman Melville'
    expect(actual).to eq(expected)
  end
end
