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

# (1,3,6)
# (4,6,8)
# (4,5,7)

# integers
# sets


class Set
  def initialize
  end

end

class UnionFind
  def initialize
    @sets_array = [[3,7], [6]]
  end

  def index_of_set(x)
    if @sets_array.length == 0
      return nil
    end
    @sets_array.each_with_index do |set, index|
      set.each do |num|
        if (num == x)
          return index
        end
      end
    end
  end

  def join(x,y)
    # if x and y are both setless, create a new set with x and y
    if (index_of_set(x) == nil && index_of_set(y) == nil)
      @sets_array << [x,y]
    # if x is setless and y has a set, then add x to y's set
    elsif (index_of_set(x) == nil)
      @sets_array[index_of_set(y)] << x
    # if x has a set and y is setless, then add y to x's set
    elsif (index_of_set(y) == nil)
      @sets_array[index_of_set(x)] << y
    # if x and y have sets, then merge the two sets
    else

    end
  end
  #
  # def is_connected(1,2)
  #
  # end
end

union1 = UnionFind.new
puts union1.index_of_set(6)
