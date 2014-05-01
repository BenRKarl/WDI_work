class Mailbox

  def initialize
    @postcards = []
  end

  def accept_postcard(postcard)
    @postcards.push(postcard)
  end

  def to_s
    "The mailbox has #{@postcards.length} postcards."
  end

end