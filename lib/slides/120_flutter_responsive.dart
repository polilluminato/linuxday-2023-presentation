import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/slides/ui/ui_responsive_package.dart';
import 'package:linuxday_2023_presentation/styles/dimens.dart';
import 'package:linuxday_2023_presentation/utils/utils.dart' as utils;
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class FlutterResponsiveSlide extends FlutterDeckSlideWidget {
  const FlutterResponsiveSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-responsive',
            header: FlutterDeckHeaderConfiguration(
              title: 'Gestione Responsive',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
        splitRatio: const SplitSlideRatio(left: 2, right: 3),
        leftBuilder: (context) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const UiResponsivePackage(
                  package: "wolt_modal_sheet",
                  padding: EdgeInsets.only(
                    top: Dimens.mainPadding,
                    bottom: Dimens.mainPadding,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    WoltModalSheet.show<void>(
                      context: context,
                      pageListBuilder: (modalSheetContext) {
                        final textTheme = Theme.of(context).textTheme;
                        return [
                          page1(modalSheetContext, textTheme),
                        ];
                      },
                      modalTypeBuilder: (context) {
                        final size = MediaQuery.of(context).size.width;
                        if (size < 600) {
                          return WoltModalType.bottomSheet;
                        } else {
                          return WoltModalType.dialog;
                        }
                      },
                      onModalDismissedWithBarrierTap: () {
                        Navigator.of(context).pop();
                      },
                      maxDialogWidth: 560,
                      minDialogWidth: 400,
                      minPageHeight: 0.0,
                      maxPageHeight: 0.9,
                    );
                  },
                  child: const Text("Mostra Modal"),
                ),
                const UiResponsivePackage(
                  package: "wolt_responsive_layout_grid",
                  padding: EdgeInsets.only(top: Dimens.hugePadding * 5),
                ),
                const UiResponsivePackage(
                  package: "responsive_builder",
                  padding: EdgeInsets.only(top: Dimens.mainPadding),
                ),
                const UiResponsivePackage(
                  package: "responsive_framework",
                  padding: EdgeInsets.only(top: Dimens.mainPadding),
                ),
                const UiResponsivePackage(
                  package: "adaptive_breakpoints",
                  padding: EdgeInsets.only(top: Dimens.mainPadding),
                ),
              ],
            ),
        rightBuilder: (context) {
          String repoLinkResponsiveGridView =
              "https://github.com/polilluminato/simple-flutter-gridview";

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const UiResponsivePackage(
                package: "flutter_staggered_grid_view",
                padding: EdgeInsets.only(
                  top: Dimens.mainPadding,
                  bottom: Dimens.mainPadding,
                ),
              ),
              FractionallySizedBox(
                widthFactor: .9,
                child: Image.asset(
                  'assets/videos/responsive-gridview.gif',
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: Dimens.mainPadding),
                child: InkWell(
                  onTap: () => utils.launchURL(repoLinkResponsiveGridView),
                  child: Text(
                    repoLinkResponsiveGridView,
                    style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
                  ),
                ),
              )
            ],
          );
        });
  }

  WoltModalSheetPage page1(
      BuildContext modalSheetContext, TextTheme textTheme) {
    return WoltModalSheetPage.withSingleChild(
      hasSabGradient: false,
      topBarTitle: Text(
        'Flutter for the win',
        style: textTheme.titleLarge,
      ),
      isTopBarLayerAlwaysVisible: true,
      trailingNavBarWidget: IconButton(
        padding: const EdgeInsets.all(Dimens.mainPadding),
        icon: const Icon(Icons.close),
        onPressed: Navigator.of(modalSheetContext).pop,
      ),
      child: Padding(
          padding: const EdgeInsets.all(Dimens.mainPadding),
          child: Text(
            "Flutter si sta sempre più affermando come una soluzione completa "
            "per creare app Cross-Platform di alta qualità per le principali "
            "piattaforme: Android, iOS, Web, Windows, macOS e Linux. "
            "Questa presentazione esplorerà le caratteristiche chiave di Flutter e come queste si "
            "traducano in vantaggi tangibili per gli sviluppatori e le aziende.\nDopo una iniziale "
            "panoramica di base di Flutter, in cui verrà spiegato cosa lo rende unico, verranno "
            "esaminati i suoi principarli vantaggi: sviluppo cross-platform per 6 piattaforme "
            "differenti, la rapida iterazione con l'Hot Reload, un'unica base di codice e "
            "creazione di interfacce utente altamente personalizzabili.\nVerranno poi presentate le "
            "principali librerie e best practice per realizzare la propria app Cross-Platform "
            "tenendo conto delle specifiche caratteristiche delle piattaforme, l'esperienza d'uso "
            "e il look and feel che l'utente di aspetta.\nPresenti durante la presentazione delle "
            "brevi demo di applicazioni per mostrare i concetti esposti.",
            style: FlutterDeckTheme.of(modalSheetContext).textTheme.bodySmall,
          )),
    );
  }
}
