import 'package:flutter/material.dart';
import 'package:my_responsive_resume/constants.dart';
import 'package:my_responsive_resume/main-content/main_content.dart';

import 'contact-card/contact_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final contactCardWidth = 250;
  final _scrollController = ScrollController();
  double _scrollOffset = 0;

  @override
  void initState() {
    _scrollController.addListener(() {
      //listener to offset
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
    super.initState();
  }

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
              // Contact info
              ContactCard(scrollOffset: _scrollOffset),
              // Little Margin
              const SizedBox(
                width: CustomTheme.padding * 2,
              ),
              // Main content
              MainContent(scrollController: _scrollController)
            ],
          ),
        ),
      ),
    );
  }
}
