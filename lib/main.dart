import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/slides/first_slide.dart';
import 'package:linuxday_2023_presentation/slides/last_slide.dart';

void main() {
  runApp(const LinuxDayPresentation());
}

class LinuxDayPresentation extends StatelessWidget {
  const LinuxDayPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      lightTheme: FlutterDeckThemeData.fromTheme(
        ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFB5FFFC),
          ),
          useMaterial3: true,
        ),
      ),
      // ...and dark themes.
      darkTheme: FlutterDeckThemeData.fromTheme(
        ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF16222A),
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
      ),
      speakerInfo: const FlutterDeckSpeakerInfo(
        name: 'Alberto Bonacina',
        description:
            'Proud Software Engineer, Flutter enthusiast and Free Software activist',
        socialHandle: '@polilluminato',
        imagePath: 'assets/me.png',
      ),
      configuration: const FlutterDeckConfiguration(
        controls: FlutterDeckControlsConfiguration(
          nextKey: LogicalKeyboardKey.arrowRight,
          previousKey: LogicalKeyboardKey.arrowLeft,
          openDrawerKey: LogicalKeyboardKey.period,
        ),
        footer: FlutterDeckFooterConfiguration(
          showSlideNumbers: false,
          showSocialHandle: true,
        ),
        header: FlutterDeckHeaderConfiguration(
          showHeader: false,
        ),
        showProgress: false,
        transition: FlutterDeckTransition.fade(),
      ),
      slides: const [
        FirstSlide(),
        LastSlide(),
      ],
    );
  }
}
