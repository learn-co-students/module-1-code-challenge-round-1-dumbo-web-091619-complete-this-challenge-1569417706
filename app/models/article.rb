class Article

    attr_accessor :title, :content
    attr_reader :author, :magazine

    @@all = []

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

# + `Article#author`
#   + Returns the author for that given article
# + `Article#magazine`
#   + Returns the magazine for that given article
# + `Article#title`
#   + Returns the title for that given article
# + `Article#content`
#   + Returns the content for that given article
