import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class StatCard extends StatelessWidget {
  const StatCard({
    super.key,
    required this.percentage,
    required this.label,
    required this.company,
  });

  final String percentage;
  final String label;
  final String company;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          percentage,
          style: FlutterDeckTheme.of(context).textTheme.title,
        ),
        Text(
          label,
          style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
        ),
        Text(
          "($company)",
          style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
