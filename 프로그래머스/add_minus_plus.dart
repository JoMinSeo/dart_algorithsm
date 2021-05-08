int AddMinusPlus(List<int> absolutes, List<bool> signs) {
  List<int> resultList = [];
  int answer = 0;

  for (var i = 0; i < absolutes.length; i++) {
    if (signs[i] == false) {
      resultList.add(absolutes[i] - (absolutes[i] * 2));
    } else {
      resultList.add(absolutes[i]);
    }
  }

  resultList.forEach((element) => answer += element);

  return answer;
}

void main() {
  print(AddMinusPlus([4, 7, 12], [true, false, true]));
  print(AddMinusPlus([1, 2, 3], [false, false, true]));
}
