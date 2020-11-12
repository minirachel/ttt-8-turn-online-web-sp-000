#1 build a method composed of many other previously defined methods (helpers)
#2 Use method return values to control logic??
#3 use an input validation loop/recursion to create a loop

#def turn
#end
  #ask user for their move by position 1-9
  #receive user input
  #convert position to an index
  #is move valid?
    #yes- make move and display board
    #no- ask for different move

board = [" "," "," "," "," "," "," "," "," "]

def display_board
end

def valid_move?(board,index)
  !position_taken?(board,index) && index.between?(0,8)
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def move
end
