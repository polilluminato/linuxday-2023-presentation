import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/utils/utils.dart';

class PlatformCompile extends StatelessWidget {
  const PlatformCompile({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getScreenWidth(context) * .1,
      child: Text(
        label,
        style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}
