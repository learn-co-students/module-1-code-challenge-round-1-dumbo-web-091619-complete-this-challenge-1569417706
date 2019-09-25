class Article

  attr_accessor :title, :content
  attr_reader :author, :magazine
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

    def self.author
        self.all.select do |author|
          author.name
        end
      end
    
    def self.magazine
        self.all.map do |magazine|
          magazine.name
        end
    end

    def self.content
        self.all.map do |content|
          content.name
        end
    end

    
    

end
