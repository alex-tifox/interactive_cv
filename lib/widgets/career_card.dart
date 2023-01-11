import 'package:flutter/material.dart';
import 'package:interactive_cv/models/career_model.dart';

class CareerCard extends StatelessWidget {
  final CareerModel career;
  const CareerCard({required this.career, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(career.company),
            Text(career.description),
          ],
        ),
      ),
    );
  }
}
