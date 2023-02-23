import 'package:flutter/material.dart';

import '../../constants.dart';
import 'info_tile.dart';

class LowerInfoContainer extends StatelessWidget {
  const LowerInfoContainer({Key? key, required this.cardWidth})
      : super(key: key);
  final double cardWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: Padding(
        padding: const EdgeInsets.all(CustomTheme.padding * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            InfoTile(
              iconData: Icons.date_range_outlined,
              text: "December 3rd, 2001",
            ),
            SizedBox(
              height: CustomTheme.padding,
            ),
            InfoTile(
              iconData: Icons.place_outlined,
              text: "Binh Duong, Vietnam",
            ),
            SizedBox(
              height: CustomTheme.padding,
            ),
            InfoTile(
              iconData: Icons.mail_outline_rounded,
              text: "huynhanh475@gmail.com",
            ),
            SizedBox(
              height: CustomTheme.padding,
            ),
            InfoTile(
              iconData: Icons.phone_iphone_outlined,
              text: "+84 829 090 027",
            ),
          ],
        ),
      ),
    );
  }
}
