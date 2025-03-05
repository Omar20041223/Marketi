import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../utils/app_colors.dart';
class BackIcon extends StatelessWidget {
  const BackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).pop();
      },
      child: Container(
        width: 48.r,
        height: 48.r,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xffB2CCFF).withValues(alpha: 0.7)),
          shape: BoxShape.circle,
        ),
        child: Center(
            child: Icon(Icons.arrow_back_ios_new_outlined,size: 25.sp,color: AppColors.darkBlue,)),
      ),
    );
  }
}
