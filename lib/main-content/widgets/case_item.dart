import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class CaseItem extends StatelessWidget {
  const CaseItem(
      {Key? key,
      required this.title,
      required this.content,
      required this.iconAsset})
      : super(key: key);
  final String title;
  final String content;
  final String iconAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.all(CustomTheme.padding),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(CustomTheme.borderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(CustomTheme.padding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              iconAsset,
              width: 40.0,
              height: 40.0,
            ),
            const SizedBox(
              width: CustomTheme.padding,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: CustomTheme.padding / 2,
                  ),
                  Text(
                    content,
                    // softWrap: true,
                    // overflow: TextOverflow.clip,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
