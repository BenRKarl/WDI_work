
class ProtosController < ApplicationController
  def index

    @protos = Proto.all

    @proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong',
             'Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes',
              'Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam',
              'Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,
              'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
            ]
  end
end




