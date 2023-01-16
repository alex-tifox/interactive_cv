import 'package:flutter/material.dart';
import 'package:interactive_cv/configuration/constants.dart';
import 'package:interactive_cv/models/experience_model.dart';
import 'package:interactive_cv/widgets/experience_list_tile.dart';

class ExperienceListView extends StatelessWidget {
  final List<ExperienceModel> workExperience;
  const ExperienceListView({required this.workExperience, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: Insets.l),
      primary: true,
      shrinkWrap: false,
      // controller: sc,
      itemBuilder: (_, index) {
        final experience = workExperience[index];
        if (experience is CareerModel) {
          return ExperienceListTile(
            companyName: experience.company,
            description: experience.description,
            title: experience.position,
            date: experience.time,
          );
        } else if (experience is EducationModel) {
          return ExperienceListTile(
            companyName: experience.institution,
            description: experience.description,
            title: experience.position,
            date: experience.time,
          );
        }
        return const SizedBox.shrink();
      },
      itemCount: workExperience.length,
      separatorBuilder: (_, __) => const SizedBox(
        height: Insets.s,
      ),
    );
  }
}
