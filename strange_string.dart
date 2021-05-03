String StrangeString(String s) {
  var answer = "";
  var count = 0;

  for (var i = 0; i < s.length; i++) {
    var text = s[i];

    if (count % 2 == 0) {
      answer += text.toUpperCase();
    } else {
      answer += text.toLowerCase();
    }

    if (text == " ") {
      count = 0;
      continue;
    }

    count++;
  }

  return answer;
}

void main() {
  print(StrangeString("try hello world"));
  print(StrangeString("minseo"));
  print(StrangeString("Hh H"));
}
