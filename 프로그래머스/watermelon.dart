String watermelon(int n) => getStringPattern(n);

String isEven(int v) {
  if (v % 2 == 0) {
    return "수";
  } else {
    return "박";
  }
}

String getStringPattern(int n) {
  var waterMelon = "";

  for (int i = 0; i < n; i++) {
    waterMelon += isEven(i);
  }

  return waterMelon;
}

void main() {
  print(watermelon(3));
  print(watermelon(4));
}
