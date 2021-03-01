class Gallery

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    artists.map do |artist|
      artist.name
    end
  end

end
