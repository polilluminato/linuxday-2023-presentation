import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/slides/ui/stat_card.dart';

class FlutterStatsSlide extends FlutterDeckSlideWidget {
  const FlutterStatsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-stats',
            header: FlutterDeckHeaderConfiguration(title: 'Flutter Stats'),
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
              StatCard(
                percentage: "98.3%",
                label: "codice condiviso ",
                company: "Ebay",
              ),
              StatCard(
                percentage: "35%",
                label: "riduzione linee di codice",
                company: "Google Pay",
              ),
              StatCard(
                percentage: "90%",
                label: "codice multipiattaforma",
                company: "Tencent",
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StatCard(
                percentage: "20%",
                label: "riduzione costi manutenzione",
                company: "Push",
              ),
              StatCard(
                percentage: "100%",
                label: "miglioramento tempo sviluppo",
                company: "Crowdsource",
              ),
              StatCard(
                percentage: "80%",
                label: "miglioramento efficienza nel debug",
                company: "Tencent",
              ),
            ],
          )
        ],
      ),
    );
  }
}
