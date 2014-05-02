proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Adam Schneider','Heidi Williams-Foy'
]

proto_devs = {}

proto_first_last = proto.map do |name| 
  name.split(' ')
end

proto_first_last.each do |dev|
  first = dev[0]
  last = dev[1]
  initials = (first[0] + last[0]).downcase.to_sym
  proto_devs[initials] = [first, last]
end 
