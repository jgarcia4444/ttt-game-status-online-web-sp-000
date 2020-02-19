# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)

  if board.all?(" ")
    return false
  end

  WIN_COMBINATIONS.select do |win_combo|
    win_idx1 = win_combo[0]
    win_idx2 = win_combo[1]
    win_idx3 = win_combo[2]
    board[win_idx1] == "X" && board[win_idx2] == "X" && board[win_idx3] == "X"
  end

end
