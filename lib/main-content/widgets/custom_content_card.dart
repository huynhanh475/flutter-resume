import 'package:flutter/material.dart';
import 'package:my_responsive_resume/constants.dart';

class CustomContentCard extends StatelessWidget {
  const CustomContentCard({Key? key, required this.child, required this.index})
      : super(key: key);
  final Widget child;
  final int index;

  @override
  Widget build(BuildContext context) {
    // if (index.isEven) {
      return Padding(
        padding: const EdgeInsets.only(left: CustomTheme.padding * 2, right: CustomTheme.padding * 2, top: CustomTheme.padding * 2),
        child: child,
      );
    // }

    // return Container(
    //   color: Theme.of(context).colorScheme.secondaryContainer,
    //   child: Padding(
    //     padding: const EdgeInsets.all(CustomTheme.padding * 2),
    //     child: child,
    //   ),
    // );
  }
}
