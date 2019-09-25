## (magazine)--<(article)>--(author)
## make a ~*~connection~*~



# + `Article.all`
#   + Returns an array of all Article instances
# + `Article#author`
#   + Returns the author for that given article
# + `Article#magazine`
#   + Returns the magazine for that given article
# + `Article#title`
#   + Returns the title for that given article
# + `Article#content`
#   + Returns the content for that given article


class Article

    attr_reader :author, :magazine, :title, :content

    @@all = []

    def initialize(author, magazine, title, content)
        @author = author
        @magazine = magazine
        @title = title
        @content = content
        @@all << self
    end

    def self.all
    #   + Returns an array of all Article instances
        @@all
    end

end
