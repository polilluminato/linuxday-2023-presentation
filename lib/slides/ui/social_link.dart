import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/styles/dimens.dart';
import 'package:linuxday_2023_presentation/utils/utils.dart';

class SocialLink extends StatelessWidget {
  const SocialLink({
    super.key,
    required this.icon,
    required this.link,
  });

  final String icon;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: Dimens.mainPadding),
          child: Image.asset(
            icon,
            width: getScreenWidth(context) * .035,
          ),
        ),
        Text(
          link,
          style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
