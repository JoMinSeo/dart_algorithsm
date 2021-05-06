List<int> NumK(List<int> array, List<List<int>> commands) {
  List<int> answer = [];

  for (var i = 0; i < commands.length; i++) {
    var subList = array.sublist(commands[i][0] - 1, commands[i][1]);
    subList.sort();

    for (var k = 0; k < subList.length; k++) {
      if (k == (commands[i][2] - 1)) {
        // k번째 수 출력
        answer.add(subList[k]);
      }
    }
  }

  return answer;
}

void main() {
  print(NumK([
    1,
    5,
    2,
    6,
    3,
    7,
    4
  ], [
    [2, 5, 3],
    [4, 4, 1],
    [1, 7, 3]
  ]));
}
