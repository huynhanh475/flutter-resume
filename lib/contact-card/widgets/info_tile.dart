import 'package:flutter/material.dart';

import '../../constants.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({Key? key, required this.iconData, required this.text})
      : super(key: key);
  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 18.0,
        ),
        const SizedBox(width: CustomTheme.padding),
        Text(
          text,
        )
      ],
    );
  }
}
