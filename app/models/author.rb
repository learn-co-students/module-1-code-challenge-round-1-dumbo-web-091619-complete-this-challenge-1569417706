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

  def self.most_verbose
    self.all.max_by do |author|
      author.max_article_word_count
    end
  end
 
  def articles 
    Article.all.select do |article|
      article.author == self
    end
  end

  def max_article_word_count
    article = self.articles.max_by do |article|
      article.content.split(" ").count
    end
    article.content.split(" ").count
  end

  def magazines
    articles.map(&:magazine).uniq
  end 

  def categories
    magazines.map(&:category).uniq
  end

  def self.most_active
    self.all.max_by do |author|
      author.articles.count
    end
  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

end
