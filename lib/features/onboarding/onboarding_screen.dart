import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_data.dart';
import 'onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: onboardingItems.length,
                onPageChanged: (index) {
                  setState(() {
                    isLastPage =
                        index == onboardingItems.length - 1;
                  });
                },
                itemBuilder: (context, index) {
                  return OnboardingPage(
                    item: onboardingItems[index],
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [

                  TextButton(
                    onPressed: () {
                      _controller.jumpToPage(
                        onboardingItems.length - 1,
                      );
                    },
                    child: const Text("Skip"),
                  ),

                  SmoothPageIndicator(
                    controller: _controller,
                    count: onboardingItems.length,
                    effect: const WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor: Colors.deepPurple,
                    ),
                  ),

                  isLastPage
                      ? ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(
                              const SnackBar(
                                content: Text(
                                  "Welcome to StyleSnap AI!",
                                ),
                              ),
                            );
                          },
                          child: const Text("Start"),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            _controller.nextPage(
                              duration: const Duration(
                                milliseconds: 500,
                              ),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: const Text("Next"),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}