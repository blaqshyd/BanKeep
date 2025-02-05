import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/exports.dart';
import 'components/onboard_details.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
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
                      child: Container(
                        width: 50,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColor.navColor,
                        ),
                        child: Text(
                          "Skip",
                          style:
                              AppTextTheme.pTextStyle.copyWith(fontSize: 14.sp),
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
                                builder: (context) => const RegisterPage(),
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
