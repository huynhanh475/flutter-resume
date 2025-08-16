import 'package:flutter/material.dart';
import 'package:my_responsive_resume/constants.dart';

import 'case_item.dart';

class WhatImDoing extends StatelessWidget {
  const WhatImDoing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What I'm Doing",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: CustomTheme.padding,
        ),
        const Row(
          children: [
            Expanded(
              child: CaseItem(
                iconAsset: "assets/icon-dev.svg",
                title: "Web Development",
                content:
                    "High-quality development of sites at the professional level.",
              ),
            ),
            SizedBox(
              width: CustomTheme.padding * 2,
            ),
            Expanded(
              child: CaseItem(
                iconAsset: "assets/icon-dev.svg",
                title: "Web Development",
                content:
                    "High-quality development of sites at the professional level.",
              ),
            )
          ],
        )
      ],
    );
  }
}
