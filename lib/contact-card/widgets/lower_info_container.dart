import 'package:flutter/material.dart';
import 'package:my_responsive_resume/responsive.dart';

import '../../constants.dart';
import 'info_tile.dart';

class LowerInfoContainer extends StatelessWidget {
  const LowerInfoContainer({Key? key, required this.cardWidth})
      : super(key: key);
  final double cardWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(maxWidth: cardWidth),
      width: cardWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: Padding(
        padding: const EdgeInsets.all(CustomTheme.padding * 2),
        child: Wrap(
          alignment: Responsive.isDesktop(context)
              ? WrapAlignment.start
              : WrapAlignment.spaceEvenly,
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.spaceEvenly,
          spacing: CustomTheme.padding,
          runSpacing: CustomTheme.padding / 2,
          children: const [
            InfoTile(
              iconData: Icons.date_range_outlined,
              text: "December 3rd, 2001",
            ),
            InfoTile(
              iconData: Icons.place_outlined,
              text: "Ho Chi Minh, Vietnam",
            ),
            InfoTile(
              iconData: Icons.mail_outline_rounded,
              text: "huynhanh475@gmail.com",
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
