class Mailbox
  def initialize
    @postcards = Array.new
  end

  def to_s
    "The mailbox has #{@postcards.length} postcards"
  end

  def accept_postcard(postcard)
    @postcards << postcard
  end

end

