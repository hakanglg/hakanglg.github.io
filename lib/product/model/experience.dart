class Experience {
  final String title;
  final String subtitle;
  final String? workPlace;
  final String date;
  final List<String> bulletPoints;

  Experience( {
    required this.title,
    required this.subtitle,
    this.workPlace,
    required this.date,
    required this.bulletPoints,
  });
}