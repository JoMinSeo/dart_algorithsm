int MakePrimeNumber(List<int> nums) {
  var answer = 0;
  List<int> temp = [];

  nums.sort();

  for (var i = 0; i < nums.length; i++) {
    for (var j = i + 1; j < nums.length; j++) {
      for (var k = j + 1; k < nums.length; k++) {
        var sum = nums[i] + nums[j] + nums[k];
        temp.add(sum);
      }
    }
  }

  for (var i = 0; i < temp.length; i++) {
    if (IsPrimeNum(temp[i])) {
      answer++;
    }
  }

  return answer;
}

bool IsPrimeNum(int tempNum) {
  for (var i = 2; i * i <= tempNum; i++) {
    if (tempNum % i == 0) return false;
  }
  return true;
}

void main() {
  print(MakePrimeNumber([1, 2, 3, 4]));
  print(MakePrimeNumber([1, 2, 7, 6, 4]));
}
