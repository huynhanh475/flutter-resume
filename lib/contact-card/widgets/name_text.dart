import 'package:flutter/material.dart';

import '../../../constants.dart';

class NameText extends StatelessWidget {
  const NameText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Anh ", style: kFirstNameTextStyle),
        Text(
          "Huynh",
          style: kLastNameTextStyle,
        ),
      ],
    );
  }
}
