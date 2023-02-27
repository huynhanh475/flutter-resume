import 'package:flutter/material.dart';

class EducationNExperience extends StatelessWidget {
  const EducationNExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Education & Experience",
          style: Theme.of(context).textTheme.headlineSmall,
        )
      ],
    );
  }
}
