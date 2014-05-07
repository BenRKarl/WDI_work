
proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
]

name_hash ={}

proto.each do |name|
  fname, lname = name.split(' ')
  i1 = fname.chars.first.downcase
  i2 = lname.chars.first.downcase

  key = (i1 + i2).to_sym

  name_hash[key] = {:first_name => fname, :last_name => lname}


end

puts name_hash







