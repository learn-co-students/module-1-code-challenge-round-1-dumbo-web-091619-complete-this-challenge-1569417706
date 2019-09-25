require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Create authors

chinua = Author.new("Chinua Achebe")
soyinka = Author.new("Wole Soyinka")
fred = Author.new("Fredrick Forsyth")

#Create Magazines

content1 = "The quicker I do this the better"
content2 = "But then I need these tests for the test to pass the tests that will be tested"

time = Magazine.new("The Times", "News")
newyorker = Magazine.new("The New Yorker", "Tabloid")

#Create Articles

article1 = Article.new(chinua, time, "This is it", content1)
article2 = Article.new(soyinka, newyorker, "Still here", content2)



###  WRITE YOUR TEST CODE HERE ###









### DO NOT REMOVE THIS
binding.pry

0
