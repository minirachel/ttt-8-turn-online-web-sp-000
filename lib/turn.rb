#3 use an input validation loop/recursion to create a loop


def turn(board)
#ask user for their move by position 1-9
  puts "Please enter 1-9:"
  #receive user input
  #convert position to an index
  if input_to_index(user_input) == validmove?(board,index)
    move(board, index, value="X")
  else
    puts "Invalid move. Please enter 1-9:"
  end 
  #is move valid?
    #yes- make move and display board
    #no- ask for different move
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board,index)
  !position_taken?(board,index) && index.between?(0,8)
end


def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end


def move(board, index, value="X")
  board[index] = value
end


def input_to_index(user_input)
  user_input.to_i - 1
end
