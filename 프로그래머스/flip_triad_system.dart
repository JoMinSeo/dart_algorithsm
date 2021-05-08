int FlipTriadSystem(int n) {
  int answer = 0;

  var triadNum = n.toRadixString(3);
  var triadString = triadNum.split('').reversed.join();
  answer = int.parse(triadString, radix: 3);
  return answer;
}

void main() {
  print(FlipTriadSystem(45));
  print(FlipTriadSystem(125));
}
