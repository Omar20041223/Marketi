import 'package:ecommerceapp/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnboardingPageViewItem extends StatefulWidget {
  const OnboardingPageViewItem({
    super.key,
    required this.onboardingModel,
    required this.controller,
  });

  final OnboardingModel onboardingModel;
  final PageController controller;

  @override
  State<OnboardingPageViewItem> createState() => _OnboardingPageViewItemState();
}

class _OnboardingPageViewItemState extends State<OnboardingPageViewItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset(widget.onboardingModel.image)),
        40.verticalSpace,
        SmoothPageIndicator(
          controller: widget.controller, // Use the passed controller
          count: 3,
          axisDirection: Axis.horizontal,
          effect: SlideEffect(
            spacing: 8.0,
            dotWidth: 20.0,
            dotHeight: 20.0,
            dotColor: Color(0xffB2CCFF),
            activeDotColor: Color(0xff001640),
          ),
        ),
        24.verticalSpace,
        Text(
          widget.onboardingModel.mainText,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        34.verticalSpace,
        Text(
          widget.onboardingModel.descriptionText,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff001640),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}


