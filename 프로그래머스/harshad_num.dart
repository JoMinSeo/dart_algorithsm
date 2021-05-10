bool HarshadNum(int x) {
  var answer = true;

  int sum = x
      .toString()
      .split('')
      .map((e) => int.parse(e))
      .reduce((value, element) => value + element);

  if (x % sum == 0) {
    return answer;
  }

  return answer = false;
}

void main() {
  print(HarshadNum(10));
  print(HarshadNum(12));
  print(HarshadNum(11));
  print(HarshadNum(13));
}
