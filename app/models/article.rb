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
