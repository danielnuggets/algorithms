# there's this data structure called a union-find
# it has two opereations
# join
# and is_connected
# assume it just holds ints
# so you'd call join(x,y) and is_connected(x,y)
# where x and y are ints
# what the data structure keeps track of is a bunch of sets
# join(x,y) will connect w.e set x is in to w.e set y is in
# and is_connected(x,y) will tell you if x and y are in the same set
#
# as an example, say you start with no elements
# then you do join(1,2)
# now you have 1 set with values 1 and 2
# so if you do is_connected(1,2) it should be true
# then you do join(3,4)
# that will create a second set in your union-find
# is_connected(3,4) should be true but is_connected(1,3) should be false
# and then if you do join(1,3)
# now 1,2,3,4 are all connected


# each set has a bunch of integers
# each integer belongs to a set
# create set class and integer class?


@sets_hash = {}
@int_hash = {}

class Set
  def initialize(ints_array)
    @elements = ints_array
  end

  def elements
    @elements
  end

  def elements=(x)
    @elements = x
  end
end

class Integer
  def initialize(int, set)
    @int = int
    @set = set
  end
end

class UnionFind
  def initialize
    @sets_hash = {}
    @int_hash = {}
  end

  def join(x,y)
    # if x and y are both setless, create a new set with x and y
    if int_hash[x] == nil && int_hash[y] == nil

    end
    # if x is setless and y has a set, then add x to y's set
    # if x has a set and y is setless, then add y to x's set
    # if x and y have sets, then merge the two sets
  end
end


class Set
  def initialize
  end

end
