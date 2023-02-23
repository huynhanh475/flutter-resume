import 'package:flutter/material.dart';
import 'package:my_responsive_resume/constants.dart';

class PositionBadge extends StatelessWidget {
  const PositionBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(CustomTheme.padding * 3 / 4),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(CustomTheme.borderRadius)),
      child: const Padding(
        padding: EdgeInsets.symmetric(
            horizontal: CustomTheme.padding, vertical: CustomTheme.padding / 2),
        child: Text("Full Stack Developer"),
      ),
    );
  }
}
