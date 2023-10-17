import 'package:flutter/material.dart';
import 'package:linuxday_2023_presentation/utils/utils.dart' as utils;

class UiPackageRow extends StatelessWidget {
  const UiPackageRow({
    super.key,
    required this.platform,
    required this.package,
    this.link,
    this.demo,
  });

  final String platform;
  final String package;
  final String? link;
  final String? demo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(platform),
        Image.asset(
          'assets/images/platforms/arrow.png',
          width: 200,
          fit: BoxFit.contain,
        ),
        Text(package),
        if (demo != null)
          ElevatedButton(
              onPressed: () => utils.launchURL(demo!),
              child: const Text("Demo"))
      ],
    );
  }
}
