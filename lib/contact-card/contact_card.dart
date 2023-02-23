import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_responsive_resume/contact-card/widgets/info_tile.dart';
import 'package:my_responsive_resume/contact-card/widgets/lower_info_container.dart';
import 'package:my_responsive_resume/contact-card/widgets/position_badge.dart';
import 'package:my_responsive_resume/contact-card/widgets/avatar.dart';

import '../../constants.dart';
import 'widgets/contact_links.dart';
import 'widgets/name_text.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key, required double scrollOffset})
      : _scrollOffset = scrollOffset,
        super(key: key);
  final verticalFlag = CustomTheme.imageSize / 2 + CustomTheme.padding * 3 / 2;

  final double _cardWidth = 280.0;
  final double _scrollOffset;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Column(
          children: [
            SizedBox(
              height: CustomTheme.verticalMargin - handleOffset(_scrollOffset),
            ),
            Container(
              width: _cardWidth,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(CustomTheme.borderRadius),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).shadowColor,
                      offset: const Offset(0, 20),
                      blurRadius: 30.0,
                      spreadRadius: 20.0,
                    )
                  ]),
              clipBehavior: Clip.hardEdge,
              child: Column(
                children: [
                  SizedBox(
                    height: CustomTheme.imageSize / 2 +
                        handleOffset(_scrollOffset) +
                        CustomTheme.padding,
                  ),
                  const NameText(),
                  const PositionBadge(),
                  const ContactLinks(),
                  const SizedBox(
                    height: CustomTheme.padding,
                  ),
                  LowerInfoContainer(
                    cardWidth: _cardWidth,
                  ),
                ],
              ),
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
