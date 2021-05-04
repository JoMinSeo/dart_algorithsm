bool ComparePY(String s) {
  bool answer = true;
  int pCount = 0;
  int yCount = 0;

  for (var i = 0; i < s.length; i++) {
    var text = s[i].toLowerCase();

    if (text == "p") {
      pCount++;
    } else if (text == "y") {
      yCount++;
    } else {
      print("p나 y가 아니네요~");
      continue;
    }
  }
  print("pcount: $pCount");
  print("ycount: $yCount");

  if (pCount == yCount) {
    return true;
  } else {
    return false;
  }
}

void main() {
  print(ComparePY("pPoooyY"));
  print(ComparePY("Pyy"));
}
