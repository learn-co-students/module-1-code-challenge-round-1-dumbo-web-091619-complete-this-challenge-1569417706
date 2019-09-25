

class Article
  # Article#author
  # Returns the author for that given article
  # Article#magazine
  # Returns the magazine for that given article
  # Article#title
  # Returns the title for that given article
  # Article#content
  # Returns the content for that given article
  attr_reader :author, :magazine, :title, :content
  @@all = []

  def initialize(title, author, magazine, content)
    @content = content
    @title = title
    @author = author
    @magazine = magazine
    @@all << self
  end

  # Article.all
  # Returns an array of all Article instances
  def self.all
    @@all
  end


end
