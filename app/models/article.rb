class Article
  attr_accessor :author, :magazine, :name, :content
  @@all =[]

  def initialize(author, magazine, name, content)
    @author = author
    @magazine = magazine
    @name = name
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end
