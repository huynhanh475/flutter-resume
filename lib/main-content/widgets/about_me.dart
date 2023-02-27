import 'package:flutter/material.dart';
import 'package:my_responsive_resume/constants.dart';
import 'package:my_responsive_resume/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About me",
          style: Responsive.isDesktop(context)
              ? Theme.of(context).textTheme.headlineLarge
              : Theme.of(context).textTheme.headlineMedium,
        ),
        Container(
          margin:
              const EdgeInsets.symmetric(vertical: CustomTheme.padding * 0.75),
          height: 6.0,
          width: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: Theme.of(context).primaryColor,
          ),
        ),
        const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
        const SizedBox(
          height: CustomTheme.padding,
        ),
        const Text(
          "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.",
        ),
      ],
    );
  }
}
