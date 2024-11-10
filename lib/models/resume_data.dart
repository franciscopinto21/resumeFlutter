class ResumeData {
  final String name;
  final String title;
  final String summary;
  final List<String> skills;
  final List<Experience> experiences;

  ResumeData({
    required this.name,
    required this.title,
    required this.summary,
    required this.skills,
    required this.experiences,
  });
}

class Experience {
  final String jobTitle;
  final String company;
  final String duration;
  final String description;

  Experience({
    required this.jobTitle,
    required this.company,
    required this.duration,
    required this.description,
  });
}
