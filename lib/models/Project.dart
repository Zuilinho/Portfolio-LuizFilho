class Project {
  final String? title, description;

  Project({this.title, this.description});
}

List<Project> projects = [
  Project(
    title: "Order App",
    description: "An App made to list orders. \nTechnologies: \n- Kotlin \n- Android Studio \n- SQLite"
  ),
  Project(
      title: "My Responsive Portfolio",
      description: "This portfolio made with Flutter, only for web. \nImprovements in progress: \n- Dark/light mode \n- Language selection \n- Others"
  ),
  Project(
      title: "Dentist SOS",
      description: "A webpage made with Flutter, trying to help dental students with simple information for dental procedures. \nIn progress."
  ),
];