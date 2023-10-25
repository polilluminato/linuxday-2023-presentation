import 'package:flutter/material.dart';
import 'package:linuxday_2023_presentation/styles/dimens.dart';
import 'package:linuxday_2023_presentation/utils/utils.dart' as utils;

class UiLinkRow extends StatelessWidget {
  const UiLinkRow({
    super.key,
    required this.label,
    required this.padding,
    required this.link,
    required this.textStyle,
  });

  final String label;
  final EdgeInsets padding;
  final String link;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            label,
            style: textStyle,
          ),
          const SizedBox(
            width: Dimens.smallSpace,
          ),
          TextButton(
            onPressed: () => utils.launchURL(link),
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
