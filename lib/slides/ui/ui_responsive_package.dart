import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/styles/dimens.dart';
import 'package:linuxday_2023_presentation/utils/utils.dart' as utils;

class UiResponsivePackage extends StatelessWidget {
  const UiResponsivePackage({
    super.key,
    required this.package,
    required this.padding,
  });

  final String package;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            package,
            style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            width: Dimens.smallSpace,
          ),
          TextButton(
            onPressed: () =>
                utils.launchURL("https://pub.dev/packages/$package"),
            child: const Icon(
              Icons.link,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
