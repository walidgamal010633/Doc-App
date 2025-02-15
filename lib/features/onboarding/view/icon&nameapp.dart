
part of 'onboarding.dart';

class IconAndNameApp extends StatelessWidget {
  const IconAndNameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  imagespath.doclogo,width: 36,
                ),
                Gap(10.w),
                Text(
                  S.of(context)!.AppName,
                  style:Textstyle.font28BlackW500 ,
                )
              ],
            );
  }
}