int CollatzConjecture(int num) {
  int answer = num;
  int tryNum = 0;

  while (tryNum < 500) {
    if (answer.isEven) {
      answer = answer ~/ 2;
    } else if (answer.isOdd) {
      answer = answer * 3 + 1;
    }

    tryNum++;

    if (answer == 1) break;

    if (tryNum >= 500) return -1;
  }

  return tryNum;
}

void main() {
  print(CollatzConjecture(6));
  print(CollatzConjecture(16));
  print(CollatzConjecture(626331));
}
