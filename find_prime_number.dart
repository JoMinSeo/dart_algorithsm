int FindPrimeNumber(int n) {
  var prime = new List.filled(n, true, growable: false);
  prime[0] = false;

  for (var i = 2; i * 2 <= n; i++) {
    if (prime[i - 1] == true) {
      for (var j = i * 2; j <= n; j += i) {
        prime[j - 1] = false;
      }
    }
  }

  return prime.where((element) => element).length;
}

void main() {
  print(FindPrimeNumber(10));
  print(FindPrimeNumber(5));
}
