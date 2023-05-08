// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:my_project/views/onboarding/onboarding_one.dart';
import 'package:my_project/views/onboarding/onboarding_three.dart';
import 'package:my_project/views/onboarding/onboarding_two.dart';
import 'package:my_project/views/auth/sign_up.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboardingPage extends StatefulWidget {
  const onboardingPage({Key? key}) : super(key: key);
  @override
  _onboardingPageState createState() => _onboardingPageState();
}

class _onboardingPageState extends State<onboardingPage> {
  // controller to keep track of current page
  final PageController _controller = PageController();
  // Keeps track if we are on the last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    onLastPage = (index == 2);
                  });
                },
                children: [
                  onboardingOne(),
                  onboardingTwo(),
                  onboardingThree(),
                ]),

            // dot indicator
            Container(
                alignment: Alignment(0, 0.75),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => _controller.jumpToPage(2),                  
                      // Jump to page works with page index starting from 0
                      child: Text("Skip",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: _controller,
                       count: 3,
                       effect: ExpandingDotsEffect(
                         activeDotColor: Colors.deepPurple,
                       ),
                    ),
                    // condition to change the next to done if the condition that(last page) is met
                    onLastPage
                        ? GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterPage(),
                                ),
                            ),
                            child: Text("Done",
                            // see if i can change this to an icon(done)
                            style: TextStyle(
                              fontWeight: FontWeight.bold),
                            ),
                          )
                        : GestureDetector(
                            onTap: () => _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                            ),
                            child: Text("Next",
                            //forward arrow icon if possible 
                            style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
