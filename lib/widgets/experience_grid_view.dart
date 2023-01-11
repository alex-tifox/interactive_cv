import 'package:flutter/material.dart';
import 'package:interactive_cv/models/career_model.dart';
import 'package:interactive_cv/widgets/career_card.dart';

class ExperienceGridView extends StatelessWidget {
  final List<CareerModel> workExperience;
  const ExperienceGridView({required this.workExperience, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 16 / 9,
      ),
      itemBuilder: (_, index) {
        final career = workExperience[index];
        return CareerCard(career: career);
      },
      itemCount: workExperience.length,
    );
  }
}
