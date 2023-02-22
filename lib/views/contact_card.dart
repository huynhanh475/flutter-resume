import 'package:flutter/material.dart';
import 'package:my_responsive_resume/views/avatar.dart';

import '../constants.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key, required this.scrollOffset}) : super(key: key);
  static const cardWidth = 250.0;
  final double scrollOffset;
  final verticalFlag = CustomTheme.imageSize / 2 + CustomTheme.padding * 3 / 2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Column(
          children: [
            SizedBox(
              height: CustomTheme.verticalMargin - handleOffset(scrollOffset),
            ),
            Container(
              width: cardWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(CustomTheme.borderRadius),
                  topRight: Radius.circular(CustomTheme.borderRadius),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(CustomTheme.padding),
                child: Column(
                  children: [
                    SizedBox(
                      height: CustomTheme.imageSize / 2 +
                          handleOffset(scrollOffset),
                    ),
                    Text(
                      verticalFlag.toString(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 250,
              height: 200,
              decoration: BoxDecoration(
                color: CustomTheme().secondaryText.withOpacity(0.3),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(CustomTheme.borderRadius),
                  bottomRight: Radius.circular(CustomTheme.borderRadius),
                ),
              ),
              child: Text("Lower"),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(
              top: CustomTheme.verticalMargin - CustomTheme.imageSize / 2),
          child: MyAvatar(),
        ),
      ],
    );
  }

  double handleOffset(double offset) {
    if (offset < 0) return 0;
    if (offset > verticalFlag) return verticalFlag;
    return offset;
  }
}
