import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/product/model/experience.dart';
import 'package:portfolio_me/product/utility/constants/color/color_constants.dart';

class ExperienceStepper extends StatefulWidget {
  const ExperienceStepper({super.key});

  @override
  State<ExperienceStepper> createState() => _ExperienceStepperState();
}

class _ExperienceStepperState extends State<ExperienceStepper> {
  final ColorConstants colorConstants = ColorConstants.instance;
  Experience? _selectedExperience;

  final List<Experience> experiences = [
    Experience(
      title: "Vizyoneks",
      subtitle: "Mobile Developer",
      workPlace: "Vizyoneks",
      date: "September 2022 - Present",
      bulletPoints: [
        "We coded ULKER, a sales automation application, using Flutter. with MVVM architecture.",
        "Migrated features written in Java to Flutter, including rewriting many features from scratch.",
        "Developed new implementations and ensured seamless integration with existing Flutter codebase.",
        "I independently updated, debugged, and deployed the Torku Admin Applicaton using Flutter with BLOC State Management and MVVM architectural design pattern.",
        "Developed, published, tested, and prepared production versions for two Sales Manager applications.",
        "Managed version releases, including error resolution and branch control, to ensure smooth updates and stability.",
        "Furthermore, I actively contributed to the backend futures of the project, utilizing .NET Core SDK to code and optimizing various backend."
      ],
    ),
    Experience(
      title: "Freelance",
      subtitle: "Freelance Mobile Developer",
      // workPlace: "Freelance",
      date: "September 2021 - Present",
      bulletPoints: [
        "Over the course of 3 years, I worked as a freelance developer, developing various projects using Flutter and Swift.",
        "Developed an application to help babies fall asleep, featuring calming sounds, lullabies, and sleep tracking functionalities.",
        "Created an interactive storytelling game where user decisions influence the narrative, providing a unique and engaging experience.",
        "Developed a wallet tracking application to monitor and manage personal finances, including expense tracking, budget planning, and financial reports."
      ],
    ),
  ];

  @override
  void initState() {
    super.initState();
    _selectedExperience = experiences[0];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLeftSection(context),
        Expanded(
          child: Padding(
            padding: context.padding.horizontalPaddingMedium,
            child: _selectedExperience != null
                ? _buildProfileContent(_selectedExperience!)
                : const SizedBox.shrink(), // İçerik yoksa boş bırak
          ),
        ),
      ],
    );
  }

  Widget _buildLeftSection(BuildContext context) {
    return Column(
      children: experiences.map((experience) {
        return GestureDetector(
          onTap: () => _onExperienceSelected(experience),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 3,
                height: 30,
                color: _selectedExperience == experience
                    ? colorConstants.activeGreen
                    : colorConstants.passiveWhite,
              ),
              const SizedBox(width: 10),
              Text(
                experience.title,
                style: context.general.textTheme.titleSmall!.copyWith(
                  color: _selectedExperience == experience
                      ? colorConstants.activeGreen
                      : colorConstants.passiveWhite,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  void _onExperienceSelected(Experience experience) {
    setState(() {
      _selectedExperience = experience;
    });
  }

  Widget _buildProfileContent(Experience experience) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              experience.subtitle,
              style: context.general.textTheme.titleSmall!.copyWith(
                color: colorConstants.white,
              ),
            ),
            experience.workPlace != null
                ? Text(
                    "@${experience.workPlace}",
                    style: context.general.textTheme.titleSmall!.copyWith(
                      color: colorConstants.activeGreen,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
        context.sized.emptySizedHeightBoxLow,
        Text(
          experience.date,
          style: context.general.textTheme.bodySmall!.copyWith(
            color: colorConstants.passiveWhite,
          ),
        ),
        context.sized.emptySizedHeightBoxLow3x,
        ...experience.bulletPoints.map((point) => _buildBulletPoint(point)).toList(),
      ],
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: context.padding.onlyBottomPaddingLow,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.arrow_right,
            color: colorConstants.activeGreen,
            size: 20,
          ),
          context.sized.emptySizedWidthBoxLow,
          Expanded(
            child: Text(
              text,
              style: context.general.textTheme.bodySmall!.copyWith(
                color: colorConstants.passiveWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
