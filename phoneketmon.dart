int Phoneketmon(List<int> nums) {
  int answer = 0;

  Set poketmon = new Set();

  for (var number in nums) {
    poketmon.add(number);
  }

  poketmon.length < nums.length / 2
      ? answer = poketmon.length
      : answer = nums.length ~/ 2;

  return answer;
}

void main() {
  print(Phoneketmon([3, 1, 2, 3]));
  print(Phoneketmon([3, 3, 3, 2, 2, 4]));
  print(Phoneketmon([3, 3, 3, 2, 2, 2]));
}
