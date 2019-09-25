class Author
  attr_accessor :name
@@all = []

#An author is initialized with a name as a string. A name **cannot** be changed after it is initialized.

#Author#name`
#Returns the name of the author as a string


# `Author.all`
# Returns an array of all Author instances

#+ `Author.most_verbose`
 # + Returns the Author instance who has the longest article by word count


  def initialize(name)
    @name = name
    @@name <<self

  end

def name
  @name
end
end
