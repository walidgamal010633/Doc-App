part of 'login.dart';

class TermsAndConditionstext extends StatelessWidget {
  const TermsAndConditionstext({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: S.of(context)!.Conditions,
            style: Textstyle.font14greyW500,
          ),
          TextSpan(
            text: S.of(context)!.TermsAndConditions,
            style: Textstyle.font13BlackW500,
          ),
          TextSpan(
            text: S.of(context)!.and,
            style: Textstyle.font14greyW500,
          ),
          TextSpan(
            text: S.of(context)!.PrivacyPolicy,
            style: Textstyle.font13BlackW500.copyWith(height: 1.5),
          ),
        ],
      ),
    );
  }
}

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.start,
        
        text: TextSpan(
          children: [
            TextSpan(
              text: S.of(context)!.Alreadyhaveanaccountyet,
              style: Textstyle.font12BlaclW400,
            ),
            TextSpan(
              text: S.of(context)!.SignUp,
              style: Textstyle.font13BlueW600,
            ),
          ],
        ));
  }
}
