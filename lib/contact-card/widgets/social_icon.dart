import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({Key? key, required this.iconData, required this.url})
      : super(key: key);
  final IconData iconData;
  final String url;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      hoverColor: Theme.of(context).primaryColor,
      padding: const EdgeInsets.all(8.0),
      constraints: const BoxConstraints(), // Remove default large padding
      onPressed: handleIconPressed,
      icon: Icon(iconData),
    );
  }

  Future<void> handleIconPressed() async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
