require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

content1 = "THIS IS CONTENT.THIS IONTENT.THIS IS CONTENT.THIS IS CONTENT.THIS IS CONTENT.THIS IS CONTENT.THIS IS CONTENT.THIS IS CONTENT.THIS IS CONTENT."
content2 = "THIS IS CONTENT.THIS IS IS CONTENTENT.THIS IS CONIS IS CONTENT.THIS IS CONTENT."
content3 = "THIS IS CONTENT.THISNTENTTHIS IS CIS ISS IS CONTENT.THIS IS CONTENT.THIS IS CONTENT.THIS IS CONTENT."

author1 = Author.new("author1_name")
author2 = Author.new("author2_name")
author3 = Author.new("author3_name")
author4 = Author.new("author4_name")
author5 = Author.new("author5_name")
author6 = Author.new("author6_name")

mag1 = Magazine.new("mag1_name", "comedy")
mag1b = Magazine.new("mag1_name", "not comedy")
mag2 = Magazine.new("mag2_name", "finance")
mag3 = Magazine.new("mag3_name", "history")

article1 = Article.new(author1, mag1, "art_title1", content1)
article1b = Article.new(author2, mag1, "art_title1b", content2)
article1c = Article.new(author1, mag2, "art_title1c", content3)
article2 = Article.new(author2, mag2, "art_title2", content2)

article2b = Article.new(author2, mag1, "art_title2b", content2)
article2c = Article.new(author2, mag2, "art_title2c", content2)

article3 = Article.new(author3, mag3, "art_title3", content3)









### DO NOT REMOVE THIS
binding.pry

0
