class Author
  # attr_accessor :name
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

  @@all << self
  end

  def find_article
    Article.all.select { |article| article.author == self }
  end

  def self.most_verbose
    Article.all.max_by { |author| author.content.length }
  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def articles
    find_article
  end

  def magazines
      find_article.map { |article| article.magazine }
  end

  def show_specialties
    magazines.map { |mag| mag.category }.uniq
  end

  def self.most_active
  count = Hash.new(0)
  Article.all.map { |article| count[article.author.name] += 1 }

  Article.all.select { |article|
  if article.author.name == count.keys[0]
    return article.author
  end
  }

  end

  def self.all
    @@all
  end

end
