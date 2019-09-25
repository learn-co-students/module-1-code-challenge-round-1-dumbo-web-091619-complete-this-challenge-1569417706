class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def articles
    Article.all.select do |article|
      article.magazine === self
    end
  end

  def self.find_by_name(zine_name)
    @@all.select do |magazine|
      magazine.name === zine_name
    end
  end

end
