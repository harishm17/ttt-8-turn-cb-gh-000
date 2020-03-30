def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if index>=0 && index<=8
    if !position_taken?(board,index)
      return true
    else
      return false
    end
  else
    return false
  end
end

def position_taken?(board,index)
  if(board[index]==" " || board[index]=="" ||board[index]==nil)
    return false
  else
    return true
  end
end

def move(board,index,c='X')
  board[index]=c
end