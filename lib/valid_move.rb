# code your #valid_move? method here
def valid_move?(board, index)

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
if(index.to_i.between?(1,9)) #if index is within available positions on board
  if !(position_taken?(board,index)) #if our position is not taken (call to our helper method position_taken?)
    return true                       # return true for valid move
  end
end

def position_taken?(board, index)

# We're accessing our array with board[index]
taken = nil #initializing variable to nil
if (board[index] == " " || board[index] == "" || board[index] == nil)
  taken = false #updating variable to false, saying index is currently empty
else
  taken = true  #updating variable to index being true or "full"
end
