<<<<<<< HEAD
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8) && board[index] == " " || board[index] == ""
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, token = "X")
    display_board(board)
  else
    turn(board)
  end
end
=======
board = ["X", "X", "X", "X", "O", "O", "X", "O", "O"]

def display_board(board)
  puts display_board(board)
end
>>>>>>> 061c3c5671dec97a6ff6ccee044aa01e6083b4fe
