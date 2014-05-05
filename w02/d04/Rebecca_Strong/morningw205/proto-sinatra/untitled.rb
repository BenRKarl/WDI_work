proto ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy'
]

proto_devs ={}

proto.map do |dev|
dev.split(' ')
  end

  proto_first_last = proto.map do |dev|
    dev.split(' ')
  end

  proto_first_last.each do |dev|
    first = dev[0] #integer = first letter
    last = dev[1] #integer = last letter
    initials = (first[0] + last[0]).downcase.to_sym

    proto_hash[initials]=[first,last]
  end
