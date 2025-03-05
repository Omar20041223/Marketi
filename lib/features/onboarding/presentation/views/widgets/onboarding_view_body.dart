import 'package:ecommerceapp/core/utils/app_router.dart';
import 'package:ecommerceapp/core/widgets/custom_button.dart';
import 'package:ecommerceapp/features/onboarding/data/models/onboarding_model.dart';
import 'package:ecommerceapp/features/onboarding/presentation/views/widgets/onboarding_page_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.0.w),
      child: Column(
        children: [
          120.verticalSpace,
          Expanded(
            child: PageView.builder(
              onPageChanged: (index){
                setState(() {
                  currentIndex = index;
                });
              },
              controller: _controller,
              itemCount: 3,
              itemBuilder: (context, index) {
                return OnboardingPageViewItem(
                  onboardingModel: onboardingModel[index],
                  controller: _controller,
                );
              },
            ),
          ),
          (currentIndex == 2) ? CustomButton(text: "Get Start",onPressed: (){
            GoRouter.of(context).pushReplacement(AppRouter.kLoginView);
          },) : CustomButton(text: "Next",onPressed: (){
            _controller.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          }),
          30.verticalSpace,
        ],
      ),
    );
  }
}

