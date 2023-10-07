import 'package:flutter/material.dart';
import 'package:linuxday_2023_presentation/utils/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:linuxday_2023_presentation/styles/dimens.dart';

class QrCodeLink extends StatelessWidget {
  const QrCodeLink({super.key, required this.link, required this.title});

  final String link;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getScreenHeight(context) * .1,
        ),
        Container(
          padding: const EdgeInsets.all(Dimens.mainPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.mainRoundedCorner),
            color: Colors.white,
          ),
          child: QrImageView(
            data: link,
            version: QrVersions.auto,
            size: getScreenWidth(context) * 0.18,
          ),
        ),
        const SizedBox(
          height: Dimens.mainMargin,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.mainPadding,
            vertical: Dimens.smallPadding,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.smallRoundedCorner),
            color: Colors.white,
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
