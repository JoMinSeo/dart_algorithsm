String Year2016(int a, int b) {
  var answer = "";
  var daySum = 0;
  List<int> month = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  List<String> dayOfWeek = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"];

  for (var i = 0; i < a - 1; i++) {
    daySum += month[i];
  }

  daySum += b + 4;

  answer = dayOfWeek[daySum % 7];
  return answer;
}

void main() {
  print(Year2016(5, 24));
  print(Year2016(5, 23));
}
