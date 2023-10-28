import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/slides/ui/platform_card.dart';
import 'package:linuxday_2023_presentation/slides/ui/platform_compile.dart';
import 'package:linuxday_2023_presentation/slides/ui/platform_compile_image.dart';

class FlutterPlatformsCompileSlide extends FlutterDeckSlideWidget {
  const FlutterPlatformsCompileSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-platforms-compile',
            header: FlutterDeckHeaderConfiguration(
              title: 'Limitazioni software',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PlatformCompile(label: "Sviluppo/Target"),
              PlatformCompile(label: "Linux"),
              PlatformCompile(label: "Android"),
              PlatformCompile(label: "iOS"),
              PlatformCompile(label: "Web"),
              PlatformCompile(label: "Windows"),
              PlatformCompile(label: "macOS"),
            ],
          ),
          SizedBox(height: 32),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PlatformCompile(label: "Linux"),
              PlatformCompileImage(label: "check"),
              PlatformCompileImage(label: "check"),
              PlatformCompileImage(label: "danger"),
              PlatformCompileImage(label: "check"),
              PlatformCompileImage(label: "danger"),
              PlatformCompileImage(label: "danger"),
            ],
          ),
          SizedBox(height: 32),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PlatformCompile(label: "Windows"),
              PlatformCompileImage(label: "danger"),
              PlatformCompileImage(label: "check"),
              PlatformCompileImage(label: "danger"),
              PlatformCompileImage(label: "check"),
              PlatformCompileImage(label: "check"),
              PlatformCompileImage(label: "danger"),
            ],
          ),
          SizedBox(height: 32),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PlatformCompile(label: "macOS"),
              PlatformCompileImage(label: "danger"),
              PlatformCompileImage(label: "check"),
              PlatformCompileImage(label: "check"),
              PlatformCompileImage(label: "check"),
              PlatformCompileImage(label: "danger"),
              PlatformCompileImage(label: "check"),
            ],
          )
        ],
      ),
    );
  }
}
