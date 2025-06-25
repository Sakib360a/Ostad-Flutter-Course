void main() {
  List<Map<String, dynamic>> students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78],
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95],
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85],
    },
  ];

  Map<String, double> studentAverages = {};

  for (var student in students) {
    String name = student["name"];

    List<int> scores = List<int>.from(student["scores"]);

    int total = 0;
    for (int score in scores) {
      total += score;
    }

    double average = total / scores.length;

    double roundedAverage = double.parse(average.toStringAsFixed(2));

    studentAverages[name] = roundedAverage;
  }

  List<MapEntry<String, double>> entryList = studentAverages.entries.toList();

  entryList.sort((a, b) {
    return b.value.compareTo(a.value);
  });

  print("{");
  for (var entry in entryList) {
    print('  "${entry.key}": ${entry.value},');
  }
  print("}");
}
