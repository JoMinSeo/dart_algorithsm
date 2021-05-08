List<int> PullOutAndAdd(List<int> numbers) {
  List<int> answers = [];

  for (var i = 0; i < numbers.length - 1; i++) {
    for (var j = i + 1; j < numbers.length; j++) {
      var sum = numbers[i] + numbers[j];

      if (answers.indexOf(sum) < 0) {
        answers.add(sum);
      }
    }
  }

  answers.sort((a, b) => a - b);
  return answers;
}

void main() {
  print(PullOutAndAdd([2, 1, 3, 4, 1]));
  print(PullOutAndAdd([5, 0, 2, 7]));
}
