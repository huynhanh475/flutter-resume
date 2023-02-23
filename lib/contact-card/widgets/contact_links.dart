import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_responsive_resume/constants.dart';
import 'package:my_responsive_resume/contact-card/widgets/social_icon.dart';

class ContactLinks extends StatelessWidget {
  const ContactLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SocialIcon(
            iconData: FontAwesomeIcons.github,
            url: "https://github.com/huynhanh475"),
        SizedBox(
          width: CustomTheme.padding / 4,
        ),
        SocialIcon(
          iconData: FontAwesomeIcons.linkedinIn,
          url: "https://www.linkedin.com/in/anh-hu%E1%BB%B3nh-8494941b3/",
        ),
      ],
    );
  }
}
