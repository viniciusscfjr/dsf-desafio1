
class TechnologyModel {
  String title;
  String subtitle;

  TechnologyModel({
    required this.title,
    required this.subtitle,
  });

  static List<TechnologyModel> getTechnologies() {
    List<TechnologyModel> tecnologies = [];

    tecnologies.add(TechnologyModel(title: "Back-end", subtitle: """
• Curso Java Developer
• Curso .Net Developer
• Curso Python Developer
• Curso Golang Developer        
"""));

    tecnologies.add(TechnologyModel(title: "Front-end", subtitle: """
• Curso React Developer
• Curso Angular Developer
• Curso Vue Developer
"""));

    tecnologies.add(TechnologyModel(title: "Mobile", subtitle: """
• Curso Flutter Developer
• Curso Kotlin Developer
• Curso Swift Developer
• Curso Ionic Developer
"""));

    tecnologies.add(TechnologyModel(title: "Cloud & DevOps", subtitle: """
• Curso AWS Developer
• Curso Azure Developer
"""));

    return tecnologies;
  }
}
