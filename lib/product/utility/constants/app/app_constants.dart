class AppConstants {
  static AppConstants? _instance;
  static AppConstants get instance {
    _instance ??= AppConstants._init();
    return _instance!;
  }

  AppConstants._init();

  String get appName => "Hakan GOLGE";

  String get aboutMenu => "About";
  String get experienceMenu => "Experience";
  String get workMenu => "Work";
  String get contactMenu => "Contact";
  String get resumeMenu => "Resume";

  static const String FONT_FAMILY = 'Poppins';

  static const FONT_ASSET_PATH = 'assets/fonts';
  static const IMAGE_ASSET_PATH = 'assets/images';
  static const SVG_ASSET_PATH = 'assets/svg';



}
