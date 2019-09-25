class Article

    @@all = []
    attr_accessor :title, :content, :author, :magazine

    def initialize(title, content, author, magazine)
        @title = title
        @content = content
        @author = author
        @magazine = magazine
        @@all << self 
    end 

    def self.all
        @@all
    end 

end
