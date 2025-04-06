/// Represents a student model with a name and a list of scores.
class Student {
  final String name;
  final List<int> scores;

  /// Creates a [Student] instance with a required [name] and [scores].
  Student({required this.name, required this.scores});

  /// Calculates the average score rounded to two decimal places.
  double get calculateAverageScore {
    if (scores.isEmpty) return 0.0;
    final total = scores.reduce((a, b) => a + b);
    return _roundToTwoDecimalPlaces(total / scores.length);
  }

  /// Rounds a [value] to two decimal places.
  double _roundToTwoDecimalPlaces(double value) {
    return (value * 100).roundToDouble() / 100;
  }
}