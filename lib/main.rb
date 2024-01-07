# frozen_string_literal: true

# Square class ceates squares and store their information
class Square
  attr_accessor :x, :y, :parent, :children

  def initialize(x, y, parent = nil)
    # create a square board of size 
    @x = x
    @y = y
    @parent = parent
  end
end

def find_moves(board)
  possible_moves = []
  # creates future moves using knight moveset
  possible_moves.push(
    [board.x + 2, board.y + 1], [board.x + 1, board.y + 2],
    [board.x - 1, board.y + 2], [board.x - 2, board.y + 1],
    [board.x + 1, board.y - 2], [board.x + 2, board.y - 1],
    [board.x - 1, board.y - 2], [board.x - 2, board.y - 1]
  )
  # check for out of bound moves
  possible_moves = possible_moves.select do |position|
    position[0].between?(0, 8) && position[1].between?(0, 8)
  end
  possible_moves = possible_moves.map do |position|
    Square.new(position[0], position[1], board)
  end
  possible_moves # saving the possible moves to the move
end

def knigh_move(start, destination)
  # create the root node
  start_child = Square.new(start[0], start[1])
  search_algo(destination, start_child)
end

def search_algo(value, children)
  # searches the tree until the value is met, and adds to the curr
  return show_path(children) if [children.x, children.y] == value

  que = find_moves(children)
  loop do
    curr = que.shift
    if [curr.x, curr.y] == value
      show_path(curr)
      break
    else
      find_moves(curr).each {|chd| que << chd}
    end
  end
end

def show_path(curr)
  parent = curr.parent
  arr = []
  until parent.nil?
    arr << [parent.x, parent.y]
    parent = parent.parent
  end
  arr.reverse!
  arr << [curr.x, curr.y]
  puts 'your path is; '
  arr.each {|i| p i}
end

knigh_move([0, 0], [7, 7])
knigh_move([1, 1], [1, 1])
