class Author
  
  attr_accessor :article
  attr_reader :name
  @@all =[]

  def initialize(name, article)
    @name = name
    @article = article
    @@all << self
  end

  def self.all 
    @@all
  end

  def self.author
    self.all.select do |author|
      author.name
    end
  end





end
