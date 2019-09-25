class Article

@@all = []
attr_reader :author, :magazine, :title, :content
attr_accessor  :author, :magazine
#An article **cannot** change its author or magazine after it is has been initialized.

def initialize (author, magazine, title, content)
@@author = "author"
@@magazine = "magazine"
@@title = title
    @@content = content
    @@all << self
end

#Article.all` 
#Returns an array of all Article instances
def self.all
    @@all
end


def article_author
    Author.all.select do |article|
        article == self
    end
#Returns the author for that given article


#`Article#magazine`
 # Returns the magazine for that given article
def article_magazine
    article.all.select do |magazine|
        magazine == self
    end

#`Article#title`
# Returns the title for that given article
def article_title
   title.all.select do |article|
       article== self
    end

#Article#content`
 # Returns the content for that given article





end
