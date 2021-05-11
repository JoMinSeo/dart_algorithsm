// 1번 풀이
String JadenString1(String s) {
  var answer = "";

  var sArr = s.split(' ').toList();

  for (var i = 0; i < sArr.length; i++) {
    sArr[i] = sArr[i][0].toUpperCase() + sArr[i].substring(1);
    answer += "${sArr[i]} ";
  }
  return answer;
}

// 2번 풀이
String JadenString2(String s) {
  return s
      .split(" ")
      .map((e) => e[0].toUpperCase() + e.substring(1).toLowerCase())
      .join(" ");
}

void main() {
  print(JadenString1("for the last week"));
  print(JadenString1("3people unFollowed me"));
  print(JadenString2("for the last week"));
  print(JadenString2("3people unFollowed me"));
}
