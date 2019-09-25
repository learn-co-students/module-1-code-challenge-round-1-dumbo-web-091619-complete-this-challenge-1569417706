class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  
  end

  def self.all
    @@all
  end


  # + `Author#add_article(magazine, title, content)`
# + Given a magazine (as Magazine instance), a title (as a string), and content (as a string), this method creates a new Article instance and associates it with that author and that magazine.

def add_article(magazine, title, content)
  Article.new(self, magazine, title, content)
end


# + `Author#articles`
# + Returns an array of Article instances the author has written
def articles
  Article.all.select do |article|
    article.author == self
  end
end

# + `Author#magazines`
# + Returns a **unique** array of Magazine instances for which the author has contributed to
def magazines
  mag = articles.map do |article|
    article.magazine
  end
  mag.uniq
end

# + `Author#show_specialties`
# + Returns a **unique** array of categories of the magazines for which the author has contributed to
def show_specialties
  mag = magazines.map do |magazine|
    magazine.category
  end
  mag.uniq
end

# + `Author.most_active`
# + Returns the Author instance who has written the greatest number of articles

  def self.most_active
    Author.all.select do |author|
      author.max_by { |author| author.articles}
    end
  end

# `Author.most_verbose`
# + Returns the Author instance who has the longest article by word count


  def self.most_verbose
    Article.all.select.max_by
  end

  #this is a class method.

end
