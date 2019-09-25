class Magazine
  attr_accessor :name, :category
  attr_reader

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(m_name)
    Magazine.all.find{|magazine| magazine.name == m_name}
  end
  
  def articles
    articles=Article.all.select{|article| article.magazine == self}
  end

  def article_titles
      self.articles.map(&:title)
  end

  def contributors
      self.articles.map(&:author)
  end

  def word_count
    self.articles.map{|article| article.content.split(' ').count}.sum
  end


end
