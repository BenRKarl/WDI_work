protos = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos',
  'Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera',
  'Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,
  'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga',
  'Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp',
  'Heidi Williams-Foy'
]
protos.each { |p| Proto.create(name: p) }
#takes each item of the array and stores it as p in the db
