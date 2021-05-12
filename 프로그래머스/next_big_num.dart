int NextBigNum(int n) {
  RegExp regExp = new RegExp(r"1");
  var size = regExp.allMatches(n.toRadixString(2)).length;
  while (true) {
    n++;
    if (size == regExp.allMatches(n.toRadixString(2)).length) return n;
  }
}

void main() {
  print(NextBigNum(78));
  print(NextBigNum(15));
}
