import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Size getScreenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double getScreenWidth(BuildContext context) {
  return getScreenSize(context).width;
}

double getScreenHeight(BuildContext context) {
  return getScreenSize(context).height;
}

//Open the browser with the url provided
void launchURL(String urlToLaunch) async {
  if (!await launchUrl(
    Uri.parse(urlToLaunch),
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $urlToLaunch');
  }
}
