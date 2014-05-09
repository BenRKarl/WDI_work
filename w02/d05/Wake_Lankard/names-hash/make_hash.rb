proto = ['wink lichard','Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy'
]

proto_hash = {}

proto.each do |name|
  arr=[]
  # first_name = name.split(' ')[0]
  # last_name = name.split(' ')[1]

  first_name, last_name = name.split(' ')
  # arr[0] = first_name
  # arr[1] = last_name

  symbol = "#{first_name[0]}#{last_name[0]}".downcase.to_sym
  i = 0
  while proto_hash.keys.include? symbol do
    symbol = (symbol.to_s + i.to_s).to_sym
    i += 1
  end


  proto_hash[symbol] = [first_name, last_name]
end

print proto_hash.keys 
puts proto_hash[:wl]