import 'dart:math';

int FindBigSquare(List<List<int>> board) {
  int up, left, upLeft;

  for (int y = 1; y < board.length; y++) {
    for (int x = 1; x < board[y].length; x++) {
      if (board[y][x] == 1) {
        up = board[y - 1][x];
        left = board[y][x - 1];
        upLeft = board[y - 1][x - 1];

        int minVal = min(up, left);
        minVal = min(minVal, upLeft);
        board[y][x] = minVal + 1;
      }
    }
  }

  int ans = 0;
  for (int y = 0; y < board.length; y++) {
    for (int x = 0; x < board[0].length; x++) {
      if (board[y][x] > 0) {
        ans = max(ans, board[y][x]);
      }
    }
  }
  return ans * ans;
}

void main() {
  print(FindBigSquare([
    [0, 1, 1, 1],
    [1, 1, 1, 1],
    [1, 1, 1, 1],
    [0, 0, 1, 0]
  ]));
  print(FindBigSquare([
    [0, 0, 1, 1],
    [1, 1, 1, 1]
  ]));
}
