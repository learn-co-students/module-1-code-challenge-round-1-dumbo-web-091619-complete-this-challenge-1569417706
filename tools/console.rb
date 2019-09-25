require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

tom = Author.new("Tom")
peter = Author.new("Peter")
bill = Author.new("Bill")

time = Magazine.new("Time", "News")
vouge = Magazine.new("Vouge", "Entertainment")
discovery = Magazine.new("Discovery", "Adventure")

a1 = Article.new(bill, vouge, "date", "a")
a2 = Article.new(tom, discovery, "earth", "b")
a3 = Article.new(peter, time, "oil rise", "c")

### DO NOT REMOVE THIS
binding.pry

0
