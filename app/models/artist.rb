class Artist

  attr_reader :name, :years_experience

  @@all

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all<<self
  end

  def self.all
    @@all
  end

  def paintings
    Paintings.all.select do |painting|
      painting.artist == self
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end




end
