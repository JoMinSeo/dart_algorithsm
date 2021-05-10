String MinMax(String s) {
  var answer = "";

  var numList = s.split(" ").map((e) => int.parse(e)).toList();
  numList.sort((a, b) => a.compareTo(b));

  var maxVal = numList.last;
  var minVal = numList.first;

  answer += "$minVal $maxVal";

  return answer;
}

void main() {
  print(MinMax("1 2 3 4"));
  print(MinMax("-1 -2 -3 -4"));
  print(MinMax("-1 -1"));
}
