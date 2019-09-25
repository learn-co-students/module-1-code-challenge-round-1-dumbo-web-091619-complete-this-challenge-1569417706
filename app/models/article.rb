# An article is initialized with an author as an Author object, a magazine as a Magazine object, title as a string, and content as a string. An article **cannot** change its author or magazine after it is has been initialized.

class Article

    attr_reader :author, :magazine, :title, :content

    @@all = []

    def initialize(author, magazine, title, content)
        @author = author
        @magazine = magazine
        @title = title 
        @content = content
        @@all.push(self)
    end

    def self.all 
        @@all 
    end 

end
