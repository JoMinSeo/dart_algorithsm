import 'dart:math';

int Ttangttameokgi(List<List<int>> land) {
  var answer = 0;
  var len = land.length;

  for (var i = len - 2; i >= 0; i--) {
    land[i][0] = [land[i + 1][1], land[i + 1][2], land[i + 1][3]].reduce(max) +
        land[i][0];
    land[i][1] = [land[i + 1][0], land[i + 1][2], land[i + 1][3]].reduce(max) +
        land[i][1];
    land[i][2] = [land[i + 1][0], land[i + 1][1], land[i + 1][3]].reduce(max) +
        land[i][2];
    land[i][3] = [land[i + 1][0], land[i + 1][1], land[i + 1][2]].reduce(max) +
        land[i][3];
  }
  answer = land[0].reduce(max); /***포인트!!***/

  return answer;
}

void main() {
  print(Ttangttameokgi([
    [1, 2, 3, 5],
    [5, 6, 7, 8],
    [4, 3, 2, 1]
  ]));

  print(Ttangttameokgi([
    [1, 2, 3, 4],
    [5, 6, 7, 100],
    [9, 10, 11, 12]
  ]));
}
