require 'postcard'

class Mailbox
  @postcards = []

  def accept_postcard(postcard)
    @postcards << postcard
  end

  def to_s
    "The mailbox has #{postcards.size} postcards."
  end
end

my_mailbox = Mailbox.new
