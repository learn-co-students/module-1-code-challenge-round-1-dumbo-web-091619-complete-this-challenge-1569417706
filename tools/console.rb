require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#authors

author1 = Author.new("name1")
author2 = Author.new("name2")
author3 = Author.new("name3")
author4 = Author.new("name4")

#magazines

mag1=Magazine.new("magname1","category1")
mag2=Magazine.new("magname2","category2")
mag3=Magazine.new("magname3","category3")
mag4=Magazine.new("magname4","category4")

#articles

art1=Article.new(author1,mag1,"articletitle1","article 1 content word1")
art2=Article.new(author2,mag2,"articletitle2","article 2 content anothor word")
art3=Article.new(author3,mag3,"articletitle3","article 3 content more words inside")
art4=Article.new(author4,mag4,"articletitle4","article 4 content even more words inside")





### DO NOT REMOVE THIS
binding.pry

0
