class Project {
  final String? title, description;

  Project({this.title, this.description});
}

List<Project> projects = [
  Project(
    title: "Weathr App",
    description: "Development of an app capable of analyzing habits and places that a user frequents to suggest activities and share information about the day"
  ),
  Project(
      title: "My Responsive Portfolio",
      description: "This responsive portfolio made with Flutter and Dart"
  ),
  Project(
      title: "Data Structures Puzzle",
      description: "Solving a puzzle as a work in the Data Structure discipline to deal with different types of structure such as Stack, List, Queue and Binary Tree"
  ),
];