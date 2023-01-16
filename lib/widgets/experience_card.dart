import 'package:flutter/material.dart';
import 'package:interactive_cv/configuration/constants.dart';

class ExperienceCard extends StatelessWidget {
  final String place;
  final String description;
  final String? title;
  final DateTime? start;
  final DateTime? end;

  const ExperienceCard({
    super.key,
    required this.place,
    required this.description,
    this.title,
    this.start,
    this.end,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Radiuses.l)),
      child: Padding(
        padding: const EdgeInsets.all(Insets.l),
        child: Column(
          children: [
            Text(place),
            Text(description),
          ],
        ),
      ),
    );
  }
}
