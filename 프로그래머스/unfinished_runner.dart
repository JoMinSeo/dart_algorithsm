String UnfinishedRunner(List<String> participant, List<String> completion) {
  String answer = "";

  Map<String, int> hm = new Map();

  for (String player in participant) {
    hm[player] = hm.putIfAbsent(player, () => 0) + 1;
  }

  for (String player in completion) {
    hm.update(player, (value) => hm[player]! - 1);
  }

  for (String key in hm.keys) {
    if (hm[key] != 0) {
      answer = key;
    }
  }

  return answer;
}

void main() {
  print(UnfinishedRunner(["leo", "kiki", "eden"], ["eden", "kiki"]));
  print(UnfinishedRunner(["marina", "josipa", "nikola", "vinko", "filipa"],
      ["josipa", "filipa", "marina", "nikola"]));
  print(UnfinishedRunner(
      ["mislav", "stanko", "mislav", "ana"], ["stanko", "ana", "mislav"]));
}
