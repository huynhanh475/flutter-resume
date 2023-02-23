import 'package:flutter/material.dart';

import '../constants.dart';

class MainContent extends StatelessWidget {
  const MainContent({Key? key, required this.scrollController})
      : super(key: key);
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        padding:
            const EdgeInsets.symmetric(vertical: CustomTheme.verticalMargin),
        controller: scrollController,
        primary: false,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 900,
                  height: 160,
                  decoration: BoxDecoration(
                    color: CustomTheme.secondaryText.withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(CustomTheme.borderRadius),
                      topRight: Radius.circular(CustomTheme.borderRadius),
                    ),
                  ),
                  child: Text("Lower"),
                ),
                Container(
                  width: 900,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(CustomTheme.borderRadius),
                      topRight: Radius.circular(CustomTheme.borderRadius),
                    ),
                  ),
                  child: Center(
                    child: Text(scrollController.hasClients
                        ? scrollController.offset.toString()
                        : "0"),
                  ),
                ),
                Container(
                  width: 900,
                  height: 500,
                  decoration: BoxDecoration(
                    color: CustomTheme.secondaryText.withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(CustomTheme.borderRadius),
                      topRight: Radius.circular(CustomTheme.borderRadius),
                    ),
                  ),
                  child: Text("Lower"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
