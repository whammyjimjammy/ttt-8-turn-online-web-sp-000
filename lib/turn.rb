#displays a tic tac toe board, with board spaces passed as an array

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#coverts a user's place on the board to the index integer
def input_to_index(input)
  input = input.to_i - 1
end

#checks the number to see if 1) the position is already taken and 2)it is an actual number
def valid_move?(board,index)
  index.between?(0,8) && position_taken?(board,index)
end

def position_taken?(board,index)
  board[index] == " " || board[index] == "" || board[index] == nil
end

#Takes a users num and the board, and places the X or O char in that position
def move(board, index, input = "X")
  board[index] = input
end

#Asks user for a number, check if it is valid, and if it's not, recursively continues to ask for a number
def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board,index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
