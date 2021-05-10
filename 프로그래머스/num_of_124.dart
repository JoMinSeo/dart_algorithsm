String NumOf124(int n) {
  var answer = "";
  List<String> numbers = ["4", "1", "2"];

  while (n > 0) {
    answer += numbers[n % 3];
    n = (n - 1) ~/ 3;
  }

  return answer.split('').reversed.join();
}

void main() {
  print(NumOf124(1));
  print(NumOf124(2));
  print(NumOf124(3));
  print(NumOf124(4));
  print(NumOf124(5));
  print(NumOf124(6));
  print(NumOf124(7));
  print(NumOf124(8));
}
