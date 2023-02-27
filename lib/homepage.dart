import 'package:flutter/material.dart';
import 'package:my_responsive_resume/constants.dart';
import 'package:my_responsive_resume/main-content/main_content.dart';
import 'package:my_responsive_resume/responsive.dart';

import 'contact-card/contact_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _scrollController = ScrollController();
  final double _contactCardWidth = 280;
  final double _mainContentWidth = 900;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            CustomTheme.primaryColor,
            CustomTheme.secondaryColor,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Scrollbar(
          controller: _scrollController,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (Responsive.isDesktop(context)) const ContactCard(),
              // Main content
              Flexible(
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: SingleChildScrollView(
                    clipBehavior: Clip.none,
                    controller: _scrollController,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        if (!Responsive.isDesktop(context))
                          ContactCard(cardWidth: _mainContentWidth),
                        MainContent(
                          containerWidth: _mainContentWidth,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
