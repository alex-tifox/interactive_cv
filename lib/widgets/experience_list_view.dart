import 'package:flutter/material.dart';
import 'package:interactive_cv/models/career_model.dart';
import 'package:interactive_cv/widgets/carrer_list_tile.dart';

class ExperienceListView extends StatelessWidget {
  final List<CareerModel> workExperience;
  const ExperienceListView({required this.workExperience, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // TODO: move padding number to separate file
      padding: const EdgeInsets.only(left: 16),
      child: ListView.separated(
        itemBuilder: (_, index) {
          final career = workExperience[index];
          return CareerListTile(
            companyName: career.company,
            description: career.description,
          );
        },
        itemCount: workExperience.length,
        separatorBuilder: (_, __) {
          return const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Divider(thickness: 1),
          );
        },
      ),
    );
  }
}
