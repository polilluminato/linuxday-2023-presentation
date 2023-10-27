import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/slides/ui/ui_link_row.dart';
import 'package:linuxday_2023_presentation/styles/dimens.dart';

class FlutterNavigationSlide extends FlutterDeckSlideWidget {
  const FlutterNavigationSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-navigation',
            header: FlutterDeckHeaderConfiguration(
              title: 'Navigazione',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(left: 2, right: 3),
      leftBuilder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Navigazione di tipo URL-based, deep links, sub-Routes, navigazione dichiarativa",
                  style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
                ),
              ),
              const SizedBox(
                width: Dimens.hugeSpace,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  UiLinkRow(
                    label: "go_router",
                    padding: const EdgeInsets.only(
                      top: Dimens.mainPadding,
                      bottom: Dimens.mainPadding,
                    ),
                    link: "https://pub.dev/packages/go_router",
                    textStyle: FlutterDeckTheme.of(context).textTheme.bodyLarge,
                  ),
                  UiLinkRow(
                    label: "beamer",
                    padding: const EdgeInsets.only(
                      top: Dimens.mainPadding,
                      bottom: Dimens.mainPadding,
                    ),
                    link: "https://pub.dev/packages/beamer",
                    textStyle: FlutterDeckTheme.of(context).textTheme.bodyLarge,
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Personalizzazione della UI sulla base della dimensione dello schermo per migliorare la user experience degli utenti",
                  style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
                ),
              ),
              const SizedBox(
                width: Dimens.hugeSpace,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  UiLinkRow(
                    label: "NavigationBar",
                    padding: const EdgeInsets.only(
                      top: Dimens.mainPadding,
                      bottom: Dimens.mainPadding,
                    ),
                    link:
                        "https://api.flutter.dev/flutter/material/NavigationBar-class.html",
                    textStyle: FlutterDeckTheme.of(context).textTheme.bodyLarge,
                  ),
                  UiLinkRow(
                    label: "NavigationRail",
                    padding: const EdgeInsets.only(
                      top: Dimens.mainPadding,
                      bottom: Dimens.mainPadding,
                    ),
                    link:
                        "https://api.flutter.dev/flutter/material/NavigationRail-class.html",
                    textStyle: FlutterDeckTheme.of(context).textTheme.bodyLarge,
                  ),
                  UiLinkRow(
                    label: "NavigationDrawer",
                    padding: const EdgeInsets.only(
                      top: Dimens.mainPadding,
                      bottom: Dimens.mainPadding,
                    ),
                    link:
                        "https://api.flutter.dev/flutter/material/NavigationDrawer-class.html",
                    textStyle: FlutterDeckTheme.of(context).textTheme.bodyLarge,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
      rightBuilder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FractionallySizedBox(
            widthFactor: .9,
            child: Image.asset(
              'assets/videos/change-navigation-responsive.gif',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
