int Budget(List<int> d, int budget) {
  int answer = 0;
  int departBudget = 0;
  int departNum = 0;
  d.sort();

  for (var i = 0; i < d.length; i++) {
    departNum++;
    departBudget += d[i];
    if (departBudget > budget) {
      departNum--;
      break;
    }
  }
  return answer = departNum;
}

void main() {
  print(Budget([1, 3, 2, 5, 4], 9));
  print(Budget([2, 2, 3, 3], 10));
}
