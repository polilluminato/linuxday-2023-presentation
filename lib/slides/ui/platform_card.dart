import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/utils/utils.dart';

class PlatformCard extends StatelessWidget {
  const PlatformCard({
    super.key,
    required this.image,
    required this.label,
  });

  final String image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: getScreenWidth(context) * .11,
          height: getScreenHeight(context) * .2,
        ),
        Text(
          label,
          style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
