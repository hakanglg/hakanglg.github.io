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


  String get aboutDescription => """Hello, I’m Hakan, a self-taught iOS and Flutter developer with 3 years of experience in mobile development. I love creating new things, adding value, and being productive. 
          \nI specialize in building high-quality, easily extendable mobile apps from the ground up, overseeing every stage of the product lifecycle from conception to publication.
While working as a Mobile Developer, I also continue to develop other applications and work on new ventures simultaneously. In addition to my technical skills, I bring a holistic approach to development by considering the perspectives of managers, designers, and product owners. This enables me to integrate platform-specific features seamlessly and ensure the product meets diverse stakeholder needs.""";
  
}
