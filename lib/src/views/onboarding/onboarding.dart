import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/exports.dart';
import '../../models/data.dart';
import 'components/onboarding.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  // controller to keep track of current page
  final PageController _controller = PageController();
  // Keeps track if we are on the last page
  bool onLastPage = false;

  Future setOnboardChecked() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isOnboardChecked = await prefs.setBool('isOnboardChecked', true);
  }

  @override
  void initState() {
    super.initState();
    setOnboardChecked();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              itemBuilder: (context, index) => OnboardDetails(
                image: onboardContent[index].image,
                header: onboardContent[index].header,
                desc: onboardContent[index].desc,
              ),
              itemCount: onboardContent.length,
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
            ),

            // dot indicator
            Align(
                alignment: const Alignment(0, 0.75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => _controller.jumpToPage(2),
                      // Jump to page works with page index starting from 0
                      child: Container(
                        width: 50,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[300],
                        ),
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        strokeWidth: 4,
                        dotHeight: 14,
                        activeDotColor: AppColor.primaryColor,
                      ),
                    ),
                    // condition to change the next to done if the condition that(last page) is met
                    onLastPage
                        ? CircleIcon(
                            color: AppColor.primaryColor,
                            child: const Icon(
                              Icons.done,
                              color: Colors.white,
                            ),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainPage(),
                              ),
                            ),
                          )
                        : CircleIcon(
                            child: const Icon(Iconsax.arrow_right_1),
                            onTap: () => _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn,
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
