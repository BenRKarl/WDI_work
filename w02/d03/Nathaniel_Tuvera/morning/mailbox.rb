class Mailbox
  # attr_accessor :postcards # only needed for access outside the clas

  def initialize(postcards_arr=nil)
    @postcards_arr = []
  end

  def accept_postcard(postcard)
    @postcards_arr << postcard
    # @postcards_arr.push(postcard)
  end

  def to_s
    "The mailbox has #{@postcards_arr.size} postcards"
  end


end
