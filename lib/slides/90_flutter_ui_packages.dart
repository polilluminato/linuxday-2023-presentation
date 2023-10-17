import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/slides/ui/ui_package_row.dart';

class FlutterUIPackagesSlide extends FlutterDeckSlideWidget {
  const FlutterUIPackagesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-ui-packages',
            header: FlutterDeckHeaderConfiguration(
              title: 'Pacchetti per UI',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          UiPackageRow(
            platform: 'Android',
            package: 'material',
          ),
          UiPackageRow(
            platform: 'iOS',
            package: 'cupertino',
          ),
          UiPackageRow(
            platform: 'Linux',
            package: 'yaru_widgets',
            link: 'https://pub.dev/packages/yaru_widgets',
            demo: 'https://ubuntu.github.io/yaru_widgets.dart/',
          ),
          UiPackageRow(
            platform: 'Windows',
            package: 'fluent_ui',
            link: 'https://pub.dev/packages/fluent_ui',
            demo: 'https://bdlukaa.github.io/fluent_ui/',
          ),
          UiPackageRow(
            platform: 'macOS',
            package: 'macos_ui',
            link: 'https://pub.dev/packages/macos_ui',
            demo: 'https://macosui.github.io/macos_ui/',
          ),
        ],
      ),
    );
  }
}
