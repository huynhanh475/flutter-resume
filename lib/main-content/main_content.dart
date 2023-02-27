import 'package:flutter/material.dart';
import 'package:my_responsive_resume/contact-card/contact_card.dart';
import 'package:my_responsive_resume/main-content/widgets/about_me.dart';
import 'package:my_responsive_resume/main-content/widgets/custom_content_card.dart';
import 'package:my_responsive_resume/main-content/widgets/education_n_experience.dart';
import 'package:my_responsive_resume/main-content/widgets/skills.dart';
import 'package:my_responsive_resume/main-content/widgets/what_im_doing.dart';
import 'package:my_responsive_resume/responsive.dart';

import '../constants.dart';

const List<Widget> contents = [
  AboutMe(),
  WhatImDoing(),
  EducationNExperience(),
  Skills(),
];

class MainContent extends StatelessWidget {
  const MainContent({Key? key, required this.containerWidth}) : super(key: key);
  //final ScrollController scrollController;
  final double containerWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: Responsive.isDesktop(context)
              ? CustomTheme.verticalMargin
              : CustomTheme.padding * 2,
          horizontal: CustomTheme.padding),
      child: Container(
        constraints: BoxConstraints(maxWidth: containerWidth),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(CustomTheme.borderRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _buildContents(),
        ),
      ),
    );
  }

  List<Widget> _buildContents() {
    return contents.asMap().entries.map((entry) {
      int idx = entry.key;
      Widget val = entry.value;

      return CustomContentCard(index: idx, child: val);
    }).toList();
  }
}
