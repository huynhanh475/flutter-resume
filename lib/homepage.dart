import 'package:flutter/material.dart';
import 'package:my_responsive_resume/constants.dart';
import 'package:my_responsive_resume/views/contact_card.dart';

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
            CustomTheme().primaryColor,
            CustomTheme().secondaryColor,
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
              ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 160.0),
                  controller: _scrollController,
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
                              color:
                                  CustomTheme().secondaryText.withOpacity(0.3),
                              borderRadius: BorderRadius.only(
                                topLeft:
                                    Radius.circular(CustomTheme.borderRadius),
                                topRight:
                                    Radius.circular(CustomTheme.borderRadius),
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
                                topLeft:
                                    Radius.circular(CustomTheme.borderRadius),
                                topRight:
                                    Radius.circular(CustomTheme.borderRadius),
                              ),
                            ),
                            child: Center(
                              child: Text(_scrollController.hasClients
                                  ? _scrollController.offset.toString()
                                  : "0"),
                            ),
                          ),
                          Container(
                            width: 900,
                            height: 500,
                            decoration: BoxDecoration(
                              color:
                                  CustomTheme().secondaryText.withOpacity(0.3),
                              borderRadius: BorderRadius.only(
                                topLeft:
                                    Radius.circular(CustomTheme.borderRadius),
                                topRight:
                                    Radius.circular(CustomTheme.borderRadius),
                              ),
                            ),
                            child: Text("Lower"),
                          ),
                        ],
                      ),
                    ],
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
