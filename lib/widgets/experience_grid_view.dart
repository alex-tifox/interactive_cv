import 'package:flutter/material.dart';
import 'package:interactive_cv/models/experience_model.dart';
import 'package:interactive_cv/widgets/experience_card.dart';

class ExperienceGridView extends StatelessWidget {
  final List<ExperienceModel> workExperience;
  const ExperienceGridView({required this.workExperience, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 16 / 9,
      ),
      itemBuilder: (_, index) {
        final experience = workExperience[index];
        return experience.when(
          careerModel: (company, position, time, description) => ExperienceCard(
            place: company,
            description: description,
          ),
          educationModel: (institution, position, time, description) =>
              ExperienceCard(
            place: institution,
            description: description,
          ),
        );
      },
      itemCount: workExperience.length,
    );
  }
}
