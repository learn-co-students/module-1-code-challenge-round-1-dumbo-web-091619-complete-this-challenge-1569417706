require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


# Magazine :
parisMatch = Magazine.new("Paris Match", "Life & style")
hollywood =  Magazine.new("Hollywod Mag", "Celebreties")

# Author :
Mike = Author.new("Mike oxford")
# Andalus = Author.new("Andalusi Spani")

# #Articles :
 first = Article.new(Mike, parisMatch, "Crazy lady gaga", "xyz bla bla")
#  second = Article.new(Mike, hollywood, "Tom cruiz after plastic surgery", "dia dia daaa")






### DO NOT REMOVE THIS
binding.pry

0
