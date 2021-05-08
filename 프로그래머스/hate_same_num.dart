List<int> HateSameNum(List<int> arr) {
  List<int> answer = [];

  for (var i = 0, j = 0; i < arr.length; i++) {
    if (answer.length == 0) {
      answer.add(arr[i]);
    } else if (answer[j] != arr[i]) {
      answer.add(arr[i]);
      j += 1;
    }
  }
  return answer;
}

void main() {
  print(HateSameNum([1, 1, 3, 3, 0, 1, 1]));
  print(HateSameNum([4, 4, 4, 3, 3]));
}
