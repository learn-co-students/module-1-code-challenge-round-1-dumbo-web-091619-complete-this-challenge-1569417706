require 'pry'

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
      article.magazine == self
    end
  end

  def authors
    articles.map do |author|
      author.author
    end
  end

  def article_titles
    articles.map do |magazines|
      # binding.pry
      magazines.title
    end
  end

  def contributors
    authors.map do |magazine|
      magazine.name
    end
  end

  def self.all
    @@all
  end


end
