import 'student_model.dart';

class StudentService {
  List<Student> loadStudents(List<Map<String, dynamic>> data) {
    return data.map((student) {
      return Student(
        name: student['name'],
        scores: List<int>.from(student['scores']),
      );
    }).toList();
  }

  Map<String, double> calculateAverageScores(List<Student> students) {
    final Map<String, double> averages = {};
    for (final student in students) {
      averages[student.name] = student.calculateAverageScore;
    }
    return averages;
  }

  Map<String, double> sortByAverageDescending(Map<String, double> averages) {
    final sortedEntries = averages.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return {for (var e in sortedEntries) e.key: e.value};
  }
}