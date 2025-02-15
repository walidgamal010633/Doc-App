import 'package:docapp/app/helper/extensions.dart';
import 'package:docapp/app/imagespath/imagespath.dart';
import 'package:docapp/app/router/path.dart';
import 'package:docapp/app/style/textstyle/textstyle.dart';
import 'package:docapp/app/ui_components/custombutton.dart';
import 'package:docapp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
part 'icon&nameapp.dart';
part 'onboardingimage.dart';

class onboarding extends StatelessWidget {
  const onboarding({super.key});
  static String routeName = screenpath.onboarding;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          IconAndNameApp(),
          Gap(30.h),
          OnboardingImage(),
          Gap(30.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              S.of(context)!.Manageandschedule,
              textAlign: TextAlign.center,
              style: Textstyle.font14greyW500
            ),
          ),
          Gap(30.h),
          CustomButton(
              text: S.of(context)!.GetStarted,
              onPressed: () {
                context.pushNamed(screenpath.login);
              }),
        ],
      )),
    );
  }
}
