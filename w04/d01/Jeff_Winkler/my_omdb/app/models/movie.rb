
class Movie
  def self.search name
    Omdb::Api.new.search(name).fetch(:movies)
  end

  def self.find title, year
    Omdb::Api.new.fetch(title, year).fetch(:movie)
  end
end
