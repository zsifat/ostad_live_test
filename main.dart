import 'student_model.dart';
import 'student_service.dart';

void main() {
  final List<Map<String, dynamic>> studentData = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  // Create an instance of StudentService.
  final studentService = StudentService();

  // Convert raw data into a list of Student objects.
  final List<Student> students = studentService.loadStudents(studentData);

  // Calculate average scores for each student.
  final Map<String, double> averages = studentService.calculateAverageScores(students);

  // Sorting students by their average scores in descending order.
  final Map<String, double> sortedResult = studentService.sortByAverageDescending(averages);

  print(sortedResult);
}
