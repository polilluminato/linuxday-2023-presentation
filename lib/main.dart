import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/slides/0_first_slide.dart';
import 'package:linuxday_2023_presentation/slides/100_flutter_window_management.dart';
import 'package:linuxday_2023_presentation/slides/10_about_me.dart';
import 'package:linuxday_2023_presentation/slides/110_flutter_adaptive.dart';
import 'package:linuxday_2023_presentation/slides/120_flutter_responsive.dart';
import 'package:linuxday_2023_presentation/slides/130_flutter_dark_light.dart';
import 'package:linuxday_2023_presentation/slides/135_questions.dart';
import 'package:linuxday_2023_presentation/slides/140_flutter_links.dart';
import 'package:linuxday_2023_presentation/slides/150_thank_you.dart';
import 'package:linuxday_2023_presentation/slides/20_agenda.dart';
import 'package:linuxday_2023_presentation/slides/30_flutter_intro.dart';
import 'package:linuxday_2023_presentation/slides/40_flutter_platforms.dart';
import 'package:linuxday_2023_presentation/slides/50_flutter_challenge.dart';
import 'package:linuxday_2023_presentation/slides/55_flutter_advantage.dart';
import 'package:linuxday_2023_presentation/slides/60_flutter_apps_example.dart';
import 'package:linuxday_2023_presentation/slides/70_flutter_stats.dart';
import 'package:linuxday_2023_presentation/slides/80_flutter_navigation.dart';
import 'package:linuxday_2023_presentation/slides/90_flutter_ui_packages.dart';

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
            seedColor: const Color(0xFF00327C),
            brightness: Brightness.light,
          ),
          useMaterial3: true,
        ),
      ),
      darkTheme: FlutterDeckThemeData.fromTheme(
        ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF00327C),
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
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
        showProgress: true,
        transition: FlutterDeckTransition.fade(),
      ),
      slides: const [
        FirstSlide(),
        AboutMeSlide(),
        AgendaSlide(),
        FlutterIntroSlide(),
        FlutterPlatformsSlide(),
        FlutterChallengeSlide(),
        FlutterAdvantageSlide(),
        FlutterAppExampleSlide(),
        FlutterStatsSlide(),
        FlutterNavigationSlide(),
        FlutterUIPackagesSlide(),
        FlutterWindowManagementSlide(),
        FlutterAdaptiveSlide(),
        FlutterResponsiveSlide(),
        FlutterDarkLighSlide(),
        QuestionsSlide(),
        LinksSlide(),
        ThankYou(),
        //LastSlide(),
      ],
      speakerInfo: const FlutterDeckSpeakerInfo(
        name: 'Alberto Bonacina',
        description:
            'Proud Software Engineer, Flutter enthusiast and Free Software activist',
        socialHandle: '@polilluminato',
        imagePath: 'assets/images/me.png',
      ),
    );
  }
}
