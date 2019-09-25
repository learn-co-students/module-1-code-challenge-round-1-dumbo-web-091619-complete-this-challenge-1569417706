require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

# authors
# name
a = Author.new("Author1")
b = Author.new("Author2")
c = Author.new("Author3")


# magazines
# name, category
d = Magazine.new("Magazine1", "category1")
e = Magazine.new("Magazine2", "category2")
f = Magazine.new("Magazine3", "category3")


# articles
# author, magazine, title, content
g = Article.new(a,d,"Title1","Conten at fda sjl k/f a;")
h = Article.new(a,e,"Title2","C onten t;a dfs io ;e m")
j = Article.new(c,f,"Title3","Con t en tfdasf")
k = Article.new(c,d,"Title4","Con te ntd sa eol soer jejf oe mf")
m = Article.new(a,f,"Title5","Co nt enta l;d; dm")
n = Article.new(a,e,"Title6","C on te ntd as; lf;af d;ed")



### DO NOT REMOVE THIS
binding.pry

0
