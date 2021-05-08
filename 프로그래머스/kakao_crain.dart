int KakaoCrain(List<List<int>> board, List<int> moves) {
  var result = 0;
  var size = board.length;
  var num = 0;
  var pocket = [];

  moves.forEach((move) {
    var cnt = 0;
    while (true) {
      if (board[cnt][move - 1] != 0) {
        // 바구니에 인형이 있는데 뽑은 인형과 같으면 Boom!!
        if (pocket.length != 0 &&
            pocket[pocket.length - 1] == board[cnt][move - 1]) {
          pocket.removeLast();
          result += 2;
        } else {
          // 그렇지 않다면 잡아서 담아 놓는다.
          pocket.add(board[cnt][move - 1]);
        }
        board[cnt][move - 1] = 0;
        break;
      }
      cnt++;
      if (cnt == size) break;
    }
  });
  return result;
}

void main() {
  print(KakaoCrain([
    [0, 0, 0, 0, 0],
    [0, 0, 1, 0, 3],
    [0, 2, 5, 0, 1],
    [4, 2, 4, 4, 2],
    [3, 5, 1, 3, 1]
  ], [
    1,
    5,
    3,
    5,
    1,
    2,
    1,
    4
  ]));
}
