require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Chuck Palahniuk")
author2 = Author.new("Brandon Sanderson")
author3 = Author.new("Janet Fitch")

magazine1 = Magazine.new("Wired", "tech")
magazine2 = Magazine.new("Juxtapoz", "art")
magazine3 = Magazine.new("Rolling Stone", "music")

article1 = Article.new(author1, magazine1, "My Great Computer", "My computer is so great. It helps me write a lot.")
article2 = Article.new(author2, magazine2, "Art is Cool", "I really like art. It helps me write my books. Aw yeah, I love art.")
article3 = Article.new(author3, magazine3, "Music is Cool", "I really love music. It gets me in the zone when I'm writing my books. Yeah, music is awesome.")








### DO NOT REMOVE THIS
binding.pry

0
