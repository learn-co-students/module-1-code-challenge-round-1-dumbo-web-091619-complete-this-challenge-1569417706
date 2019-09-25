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
