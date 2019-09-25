class Article

    attr_accessor :title, :content
    attr_reader :author, :magazine 

    @@all = []

    def initialize(title, author, magazine, content)
        @title = title
        @author = author
        @magazine = magazine
        @content = content
        @@all << self
    end

    def self.all
        @@all
    end

    

end
