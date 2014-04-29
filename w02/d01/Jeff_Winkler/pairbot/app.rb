require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @message = "Do you have a test for that?"
  @yeslink = "pass"
  @nolink = "write_it"
  @yesmessage = "Yes"
  @nomessage = "No"
  erb :yesno
end

get '/:answer' do
  @answer = params[:answer]
  case @answer
  when "write_it"
    @message = "Write Test"
    @yeslink = "pass"
    @nolink = ""
    @yesmessage = "Done"
    @nomessage = ""
  when "pass"
    @message = "Does the test pass?"
    @yeslink = "refactor"
    @nolink = "writemore"
    @yesmessage = "Yes"
    @nomessage = "No"
  when "refactor"
    @message = "Do you need to refactor?"
    @yeslink = "refact_it"
    @nolink = "new_feature"
    @yesmessage = "Yes"
    @nomessage = "No"
  when "writemore"
    @message = "Write code to make test pass."
    @yeslink = "pass"
    @nolink = ""
    @yesmessage = "Done"
    @nomessage = ""
  when "refact_it"
    @message = "Refactor the code."
    @yeslink = "pass"
    @nolink = ""
    @yesmessage = "Done"
    @nomessage = ""
  when "new_feature"
    @message = "Select new feature to implement."
    @yeslink = "/"
    @nolink = ""
    @yesmessage = "Done"
    @nomessage = ""
  end
  erb :yesno
end


