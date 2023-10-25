import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/styles/dimens.dart';
import 'package:linuxday_2023_presentation/utils/utils.dart' as utils;

class SocialLink extends StatelessWidget {
  const SocialLink({
    super.key,
    required this.icon,
    required this.label,
    this.link,
  });

  final String icon;
  final String label;
  final String? link;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: Dimens.mainPadding),
          child: Image.asset(
            icon,
            width: utils.getScreenWidth(context) * .035,
          ),
        ),
        Text(
          label,
          style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          width: Dimens.smallSpace,
        ),
        if (link != null)
          TextButton(
            onPressed: () => utils.launchURL(link ?? ''),
            child: const Icon(
              Icons.link,
              color: Colors.blue,
            ),
          )
      ],
    );
  }
}
