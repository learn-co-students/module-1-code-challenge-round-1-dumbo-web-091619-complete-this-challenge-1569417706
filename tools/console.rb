require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

rob = Author.new("Roberto")
eric = Author.new("Eric")
puts "Authors"
p Author.all
p Author.all.count

gq = Magazine.new("GQ", "fashion")
gqLation = Magazine.new("GQ Latino", "fashion")
forbes = Magazine.new("Forbes", "lifestyle")

puts "Magazines"
p Magazine.all
p Magazine.all.count

article1 = Article.new(rob, gq, "Code Challege Life", "This is extremely fun!")
article2 = Article.new(rob, gqLation, "El Examin", "Esto es muy divertido. Que gusto.")
article3 = Article.new(eric, forbes, "From Flatiron to Riches", "It all started when I deicded stop teaching math and try my look as a programmer.")

puts "Articles"
p Article.all
p Article.all.count

puts "Rob has written #{rob.articles.count} articles"
puts rob.max_article_word_count

puts "Max author instance should be named Eric"
puts Author.most_verbose.name

puts "Magazine find by name should return GQ Latino"
puts Magazine.find_by_name("GQ Latino").name
# p rob, eric

puts "Rob magazines should be [GQ, GQ Latino]"
puts rob.magazines.map(&:name)

puts "Rob magazines should be [fashion]"
puts rob.categories

puts "Author.most_active should return Roberto"
puts Author.most_active.name

puts "Article titles for GQ should be 'Code Challenge Life'"
puts gq.article_titles

puts "Contributors name for Forbes should be Eric"
puts forbes.contributors.map(&:name)

rob.add_article(gq, "Code Challege Life PT 2","This is extremely fun! So so so much fun!" ) 
puts "Article titles for GQ should be 'Code Challenge Life' and 'Code Challenge Life PT 2' "
puts gq.article_titles

puts "Word count for gq should be 13"
puts gq.word_count

### DO NOT REMOVE THIS
# binding.pry

0
