import 'package:flutter/material.dart';

class CareerListTile extends StatelessWidget {
  final String companyName;
  final String description;

  const CareerListTile({
    super.key,
    required this.companyName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        companyName,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        description,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
