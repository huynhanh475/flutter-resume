import 'package:flutter/material.dart';

import '../../constants.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({Key? key, required this.iconData, required this.text})
      : super(key: key);
  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            size: 20.0,
          ),
          const SizedBox(width: CustomTheme.padding),
          Text(
            text,
          )
        ],
      ),
    );
  }
}
