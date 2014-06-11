%w(club heart spade diamond).each do |suit|
  %w(2 3 4 5 6 7 8 9 10 J Q K A).each do |name|
    card = Card.create( :name => name.to_s, :suit => suit )
  end
end
