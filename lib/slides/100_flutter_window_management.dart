import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/slides/ui/ui_link_row.dart';
import 'package:linuxday_2023_presentation/styles/dimens.dart';
import 'package:linuxday_2023_presentation/utils/utils.dart' as utils;

class FlutterWindowManagementSlide extends FlutterDeckSlideWidget {
  const FlutterWindowManagementSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-window-management',
            header: FlutterDeckHeaderConfiguration(
              title: 'Gestione finestra',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    String repoLink =
        "https://github.com/polilluminato/simple-flutter-resizewindow";

    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(left: 2, right: 3),
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: false,
        items: const [
          'Hide/Show',
          'Resize',
          'Maximize/Minimize',
          'Fullscreen',
          'Position',
          'Opacity',
          'Brightness',
          'Alignment/Center'
        ],
      ),
      rightBuilder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FractionallySizedBox(
            widthFactor: .9,
            child: Image.asset(
              'assets/videos/window-manager-demo.gif',
              fit: BoxFit.contain,
            ),
          ),
          UiLinkRow(
            label: repoLink,
            padding: const EdgeInsets.only(
              top: Dimens.mainPadding,
              bottom: Dimens.mainPadding,
            ),
            link: repoLink,
            textStyle: FlutterDeckTheme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
