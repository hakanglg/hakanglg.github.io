class StringConstants {
  static StringConstants? _instance;
  static StringConstants get instance {
    _instance ??= StringConstants._init();
    return _instance!;
  }

  StringConstants._init();


  String get linkedinUrl => "https://www.linkedin.com/in/hakangolge/";
  String get githubUrl => 'https://github.com/hakanglg';
  String get mediumUrl => 'https://hakangolge.medium.com/';
  String get resumeUrl => 'https://drive.google.com/file/d/1qHUwM4J6SKLYmAfZAAjhbqwooRaUyHf2/view?usp=sharing';

  
}
