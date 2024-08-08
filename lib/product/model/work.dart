import 'dart:ui';

import 'package:portfolio_me/product/utility/enum/image_enum.dart';

class Work {
  final String title;
  final List<String> bulletPoints;
  final String imagePath;
  final String githubUrl;

  Work({
    required this.title,
    required this.bulletPoints,
    required this.imagePath,
    required this.githubUrl,
  });
}

final List<Work> works = [
  Work(
    title: "Dabasir's Wallet",
    bulletPoints: [
      "MWWM Architecture",
      "State Management with Provider",
      "Cache Management with Shared Preferences",
      "Database with FireStore",
      "Localization with EasyLocalization",
      "Authentication with Firebase Auth ",
    ],
    imagePath: ImageItems.DabasirsWalletMockup.imagePathPng,
    githubUrl: 'https://github.com/hakanglg/Dabasirs-Wallet',
  ),
  Work(
    title: "OTODO",
    bulletPoints: [
      "MWWM Architecture",
      "State Management with MobX",
      "Cache Management with Hive",
      "Localization with EasyLocalization",
    ],
    imagePath: ImageItems.OtodoMockup.imagePathPng,
    githubUrl: 'https://github.com/hakanglg/otodo',
  ),
];