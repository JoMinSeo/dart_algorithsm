import 'dart:math';

List<int> MockTest(List<int> answers) {
  List<int> answer = [];

  List<int> arr1 = [1, 2, 3, 4, 5];
  List<int> arr2 = [2, 1, 2, 3, 2, 4, 2, 5];
  List<int> arr3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5];

  // 문제 맞춘 갯수를 담아 비교할 배열
  List<int> compareArr = [0, 0, 0];

  for (var i = 0; i < answers.length; i++) {
    if (answers[i] == arr1[i % 5]) compareArr[0]++;
    if (answers[i] == arr2[i % 8]) compareArr[1]++;
    if (answers[i] == arr3[i % 10]) compareArr[2]++;
  }

  // 최대값을 구한다.
  var high = compareArr.reduce(max);

  for (var j = 0; j < compareArr.length; j++) {
    if (compareArr[j] == high) answer.add(j + 1);
  }

  return answer;
}

void main() {
  print(MockTest([1, 2, 3, 4, 5]));
  print(MockTest([1, 3, 2, 4, 2]));
  print(MockTest([3, 3, 1, 1, 2, 2]));
}
