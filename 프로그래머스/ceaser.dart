String Ceaser(String s, int n) {
  String answer = "";
  var upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  var lower = "abcdefghijklmnopqrstuvwxyz";

  for (var i = 0; i < s.length; i++) {
    var text = s[i];
    if (text == ' ') {
      answer += ' ';
      continue;
    }

    var textArr = upper.contains(text) ? upper : lower;
    var index = textArr.indexOf(text) + n;
    if (index >= textArr.length) index -= textArr.length;
    answer += textArr[index];
  }
  return answer;
}

void main() {
  print(Ceaser("AB", 1));
}
