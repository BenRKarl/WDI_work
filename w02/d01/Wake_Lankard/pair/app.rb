require "sinatra"
require "sinatra/reloader"

#page key => [copy to appear on page, page key for 'yes', page key for 'no']

map = { "have_test" => ["Do you have a test for that?", "test_pass", "write_test"],
        "test_pass" => ["Does the test pass?", "need_refactor", "write_code"],
        "need_refactor" =>["Need to refactor?", "refactor", "new_feature"],
        "refactor" => ["Refactor the code.", "test_pass"],
        "write_code" => ["Write just enough code for the test to pass.", "test_pass"],
        "new_feature" =>["Select a new feature to implement", "have_test"],
        "write_test" => ["Write a test", "test_pass"]
      }

#This is killing me.  Can I put these in one get block?
get "/" do 
  page_key = "have_test"
  @result = map[page_key][0]
  @yes_link = map[page_key][1]
  @no_link = map[page_key][2]
  erb :page
end


get "/:page_key" do 
  page_key = params[:page_key]
  @result = map[page_key][0]
  @yes_link = map[page_key][1]
  @no_link = map[page_key][2]
  if @no_link == nil
    erb :done_page
  else
    erb :page
  end
end




