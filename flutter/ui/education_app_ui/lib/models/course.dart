class Course {
  final String title;
  final int numLecture;
  final String imageUrl;
  final String numStudents;
  final double rating;
  final String color;

  const Course({
    required this.title,
    required this.numLecture,
    required this.imageUrl,
    required this.numStudents,
    required this.rating,
    required this.color,
  });
}

const List<Course> courses = [
  Course(
      title: 'Design',
      numLecture: 54,
      imageUrl: 'assets/images/Chart_perspective.png',
      numStudents: '1.2k',
      rating: 4.5,
      color: 'FEE2DE'),
  Course(
      title: 'Grammar',
      numLecture: 54,
      imageUrl: 'assets/images/Books_perspective.png',
      numStudents: '1.2k',
      rating: 4.5,
      color: 'FEDDEE'),
  Course(
      title: 'Finance',
      numLecture: 54,
      imageUrl: 'assets/images/Dashboard_perspective.png',
      numStudents: '1.2k',
      rating: 4.5,
      color: 'DAD5FE'),
  Course(
      title: 'Coding',
      numLecture: 54,
      imageUrl: 'assets/images/Code_perspective.png',
      numStudents: '1.2k',
      rating: 4.5,
      color: 'DBFFD9'),
];
