import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2023_presentation/slides/ui/social_link.dart';

class QuestionsSlide extends FlutterDeckSlideWidget {
  const QuestionsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/questions',
            header: FlutterDeckHeaderConfiguration(title: 'Domande?'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialLink(
                icon: 'assets/images/social-icons/github.png',
                link: '@polilluminato',
              ),
              SocialLink(
                icon: 'assets/images/social-icons/linkedin.png',
                link: 'linkedin.com/in/bonacinaalberto/',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialLink(
                icon: 'assets/images/social-icons/twitter.png',
                link: '@polilluminato',
              ),
              SocialLink(
                icon: 'assets/images/social-icons/mastodon.png',
                link: '@polilluminato@fluttercommunity.social',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialLink(
                icon: 'assets/images/social-icons/website.png',
                link: 'albertobonacina.com',
              ),
              SocialLink(
                icon: 'assets/images/social-icons/mail.png',
                link: 'bonacina.alberto@gmail.com',
              ),
            ],
          )
        ],
      ),
    );
  }
}
