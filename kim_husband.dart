String findKimHusband(List<String> seoul) => "김서방은 ${seoul.indexOf("Kim")}에 있다";

void main() {
  print(findKimHusband(["Jane", "Kim"]));
}
