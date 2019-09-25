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

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    my_magazines = articles.map do |article|
      article.magazine
    end
    my_magazines.uniq
  end

  def show_specialties
    categories = magazines.map do |magazine|
      magazine.category
    end
    categories.uniq
  end

  def content
    content = articles.map do |article|
      article.content
    end
  end

  def words
    content.map do |content_instance|
      content_instance.split(" ").size
    end
  end

  def word_count
    words.reduce(0) do |sum, word|
     sum + word
    end
  end

  def self.most_verbose
    self.all.max_by do |author|
      author.word_count
    end
  end

  def self.most_active
    self.all.max_by do |author|
      author.articles.size
    end
    
  end

end
