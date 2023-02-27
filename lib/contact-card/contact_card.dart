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
  const ContactCard({Key? key, this.cardWidth = 280.0}) : super(key: key);
  //final verticalFlag = CustomTheme.imageSize / 2 + CustomTheme.padding * 3 / 2;

  final double cardWidth;
  //final double _scrollOffset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CustomTheme.padding),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Column(
            children: [
              const SizedBox(
                // height: CustomTheme.verticalMargin - handleOffset(_scrollOffset),
                height: CustomTheme.verticalMargin,
              ),
              Container(
                constraints: BoxConstraints(maxWidth: cardWidth),
                //width: cardWidth,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(CustomTheme.borderRadius),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        offset: const Offset(5, 30),
                        blurRadius: 30.0,
                        spreadRadius: 10.0,
                      )
                    ]),
                clipBehavior: Clip.hardEdge,
                child: Column(
                  children: [
                    const SizedBox(
                      // height: CustomTheme.imageSize / 2 +
                      //     handleOffset(_scrollOffset) +
                      //     CustomTheme.padding,
                      height: CustomTheme.imageSize / 2 +
                          CustomTheme.padding * 3 / 2,
                    ),
                    const NameText(),
                    const SizedBox(
                      height: CustomTheme.padding,
                    ),
                    const PositionBadge(),
                    const SizedBox(
                      height: CustomTheme.padding,
                    ),
                    const ContactLinks(),
                    const SizedBox(
                      height: CustomTheme.padding,
                    ),
                    LowerInfoContainer(
                      cardWidth: cardWidth,
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
      ),
    );
  }

  // double handleOffset(double offset) {
  //   if (offset < 0) return 0;
  //   if (offset > verticalFlag) return verticalFlag;
  //   return offset;
  // }
}
