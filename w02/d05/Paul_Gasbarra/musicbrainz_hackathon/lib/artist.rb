class Artist
  attr_reader :name, :hometown, :discography
  def initialize(options)
    include HTTParty
    attr_reader :name, :hometown, :discography
    @name = name
    @hometown = hometown
    @discography = discography
  end

end
