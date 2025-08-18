import 'package:flutter/material.dart';
import 'package:my_responsive_resume/constants.dart';
import 'package:my_responsive_resume/responsive.dart';

const String aboutMeText = """I'm a software engineer with a strong focus on building reliable, scalable systems from the ground up. Over the past few years, I've designed and shipped products across frontend, backend, and mobile, balancing speed of execution with long-term maintainability.

I thrive at the intersection of system design and execution: whether it's scaling APIs, structuring data flows, or optimizing user experiences. My goal is to keep pushing technical boundaries while building products that actually get used.""";

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
            color: const Color(0xFF304CFD),
          ),
        ),
        const Text(aboutMeText),
        // const SizedBox(
        //   height: CustomTheme.padding,
        // ),
        // const Text(
        //   "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.",
        // ),
      ],
    );
  }
}
