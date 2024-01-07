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

  p kn.possible_move([3,3])
