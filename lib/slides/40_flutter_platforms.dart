import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/slides/ui/platform_card.dart';

class FlutterPlatformsSlide extends FlutterDeckSlideWidget {
  const FlutterPlatformsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-platforms',
            header: FlutterDeckHeaderConfiguration(
              title: 'Quali Piattaforme?',
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
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PlatformCard(
                image: 'assets/images/platforms/android.png',
                label: 'Android',
              ),
              PlatformCard(
                image: 'assets/images/platforms/ios.png',
                label: 'iOS',
              ),
              PlatformCard(
                image: 'assets/images/platforms/web.png',
                label: 'Web',
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PlatformCard(
                image: 'assets/images/platforms/linux.png',
                label: 'Linux',
              ),
              PlatformCard(
                image: 'assets/images/platforms/windows.png',
                label: 'Windows',
              ),
              PlatformCard(
                image: 'assets/images/platforms/macos.png',
                label: 'macOS',
              ),
            ],
          )
        ],
      ),
    );
  }
}
