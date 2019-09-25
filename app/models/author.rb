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

  def articles
    Article.all.select do |article|
      article.author === self 
    end
  end

  def magazines
    mags = articles.map do |article|
      article.magazine
    end
    mags.uniq
  end


  def self.most_verbose
    contents = Article.all.map do |article|
      article.content.split
    end
    longest_content = contents.max_by do |content|
      content.size
    end
    longest_art = Article.all.select do |article|
      article.content === longest_content.join(" ")
    end
    longest_art.map do |article|
      article.author
    end
  end

  def add_article(title, magazine, content)
    Article.new(title, self, magazine, content)
  end

end
