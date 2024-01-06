# frozen_string_literal: true

# knight traversal
# to do list
# create a knight class
# the knight should have a move function
# ie knight.move(original cord, destination cord)
# the coordinates would be an array [x,y]

# node class is another form of the game board
class Square
  def initialize(data)
    #create a square board of size 'size'
    @data = data # return location
    @count = # step count of this square
    @has_visited = false
  end
end

# knight class store and controls knight
class Knight
  def initialize
    @original_pos = [0, 0]
    @moves = 0
    @history = [] # the history would sotre the previous move visits
    @move_set = [
      [2, 1], [1, 2], [-1, 2], [-2, 1], # up
      [1, -2], [2, -1], [-1, -2], [-2, -1] # down
    ]
  end

  def best_move(dest_vale)
    # iterate through the node tree until all nodes in the nxn 
    # found the value
    return nil if baord[dest_vale].nil? # out of bounds value
  end
  
  def possible_move(start_pos)
    avail = []
    i = 0
    while i < @move_set.length-1
      avail << [start_pos, @move_set[i]].transpose.map {|x| x.reduce(:+)}
      i += 1
    end
    avail
  end
end

kn = Knight.new
p kn.possible_move([3,3])
