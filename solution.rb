# Please copy/paste all three classes into this file to submit your solution!

class Article

	attr_reader :author, :magazine, :title, :content
	# attr_writer
	# attr_accessor

  	@@all = []

  def initialize(author, magazine, title, content)
	@author = author
	@magazine = magazine
	@title = title
	@content = content

	@@all << self
  end

  def self.all
    @@all
  end

end

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

class Magazine

  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  def find_articles
    Article.all.select { |article| article.magazine == self }
  end

  def self.find_by_name(mag_name)
    Magazine.all.select { |mag| mag.name == mag_name }.first
  end

  def article_titles
    find_articles.map { |article| article.title }
  end

  def contributors
    find_articles.map { |article| article.author }
  end

  def word_count
    find_articles.map { |article| article.content.split(" ").length }.sum
  end

  def self.all
    @@all
  end

end