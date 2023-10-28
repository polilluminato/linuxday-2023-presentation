import 'package:flutter/material.dart';
import 'package:linuxday_2023_presentation/utils/utils.dart';

class PlatformCompileImage extends StatelessWidget {
  const PlatformCompileImage({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getScreenWidth(context) * .1,
      child: Center(
        child: Image.asset(
          'assets/images/platforms/$label.png',
          fit: BoxFit.contain,
          width: 64,
        ),
      ),
    );
  }
}
