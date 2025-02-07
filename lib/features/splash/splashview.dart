import 'package:docapp/app/helper/extensions.dart';
import 'package:docapp/app/imagespath/imagespath.dart';
import 'package:docapp/app/router/path.dart';
import 'package:docapp/app/style/textstyle/textstyle.dart';
import 'package:docapp/features/onboarding/view/onboarding.dart';
import 'package:docapp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    executeNaviagtion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imagespath.doclogo,
          ),
          Gap(10.w),
          Text(
            S.of(context)!.AppName,
            style: Textstyle.font48BlackW700,
          )
        ],
      ),
    );
  }

  void executeNaviagtion() {
    Future.delayed(const Duration(seconds: 3), () {
      context.pushNamed(onboarding.routeName);
    });
  }
}
