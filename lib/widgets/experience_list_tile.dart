import 'package:flutter/material.dart';
import 'package:interactive_cv/configuration/constants.dart';

class ExperienceListTile extends StatelessWidget {
  final String companyName;
  final String description;
  final String title;
  // TODO: temporary solution, remove when date mechanism will be done
  final String date;

  const ExperienceListTile({
    super.key,
    required this.companyName,
    required this.description,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.l),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Radiuses.l),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            companyName,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
              children: [
                TextSpan(text: title),
                const TextSpan(text: ' | '),
                TextSpan(text: date),
              ],
            ),
          ),
          const Divider(
            height: Insets.s,
          ),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
