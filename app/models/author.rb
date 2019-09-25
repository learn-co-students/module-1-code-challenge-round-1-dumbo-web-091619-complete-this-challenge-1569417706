
class Author
  # Author#name
  # Returns the name of the author as a string
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Author.all
  # Returns an array of all Author instances
  def self.all
    @@all
  end

  # Not ready!!!
  # Author.most_verbose
  # Returns the Author instance who has the longest article by word count
  def self.most_verbose
    Article.all.map do |article|
      article.content
    end
  end

  # Author#add_article(magazine, title, content)
  # Given a magazine (as Magazine instance), a title (as a string), and content (as a string), this method creates a new Article instance and associates it with that author and that magazine.
  def add_article(magazine, titile, content)
    Article.new(self, magazine, title, content)
  end

  # Author#articles
  # Returns an array of Article instances the author has written
  def articles
    Article.all.select do |article|
      if article.author == self
      article
    end
    end
  end

  # Author#magazines
  # Returns a unique array of Magazine instances for which the author has contributed to
  def magazines
    Article.all.select do |magazine|
      if magazine.author == self
      magazine.magazine.name
    end
  end
  end

  # Author#show_specialties
  # Returns a unique array of categories of the magazines for which the author has contributed to

  def show_specialties
    Article.all.select do |magazine|
      if magazine.author == self
      magazine.magazine.category
    end
  end
  end

  # Not READY!!!
  # Author.most_active
  # Returns the Author instance who has written the greatest number of articles
  def self.most_active
    array_mag = Article.all.map do |magazine|
      if magazine.author == self
      magazine
    end
  end
    array_mag
  end

end
