import 'package:docapp/app/router/path.dart';
import 'package:docapp/app/style/textstyle/textstyle.dart';
import 'package:docapp/app/ui_components/custombutton.dart';
import 'package:docapp/app/ui_components/customtextfiled.dart';
import 'package:docapp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

part 'logintextfiled.dart';
part 'terms&conditionstext.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static const routeName = screenpath.login;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context)!.WelcomeBack,
              style: Textstyle.font24BlueW700,
            ),
            Gap(12.h),
            Text(
              S.of(context)!.WelcomeBackMessage,
              style: Textstyle.font15greyW400,
            ),
            Gap(32.h),
            Logintextfiled(),
            Gap(80.h),
            TermsAndConditionstext(),
            Gap(40.h),
            Align(child: AlreadyHaveAccount())
          ],
        ),
      )),
    );
  }
}
