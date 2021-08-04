class Course {
  final String title;
  final int numLecture;
  final String imageUrl;
  final String numStudents;
  final double rating;

  const Course({
    required this.title,
    required this.numLecture,
    required this.imageUrl,
    required this.numStudents,
    required this.rating,
  });
}

const List<Course> courses = [
  Course(
    title: 'Design',
    numLecture: 54,
    imageUrl: 'assets/images/Chart_perspective.jpg',
    numStudents: '1.2k',
    rating: 4.5,
  ),
  Course(
    title: 'Grammar',
    numLecture: 54,
    imageUrl: 'assets/images/Books_perspective.jpg',
    numStudents: '1.2k',
    rating: 4.5,
  ),
  Course(
    title: 'Finance',
    numLecture: 54,
    imageUrl: 'assets/images/Dashboard_perspective.jpg',
    numStudents: '1.2k',
    rating: 4.5,
  ),
  Course(
    title: 'Coding',
    numLecture: 54,
    imageUrl: 'assets/images/Code_perspective.jpg',
    numStudents: '1.2k',
    rating: 4.5,
  ),
];
