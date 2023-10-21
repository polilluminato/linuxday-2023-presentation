import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/utils/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:linuxday_2023_presentation/styles/dimens.dart';

class QrCodeLink extends StatelessWidget {
  const QrCodeLink({
    super.key,
    required this.link,
  });

  final String link;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: Dimens.hugeMargin,
            bottom: Dimens.mainMargin,
          ),
          padding: const EdgeInsets.all(
            Dimens.mainPadding,
          ),
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
        Text(
          link,
          style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
