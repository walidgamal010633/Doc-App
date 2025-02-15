part of 'onboarding.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SvgPicture.asset(
              imagespath.doclogo_opasity,
              width: 350.w,
            ),
            Container(
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.white.withOpacity(0)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.center),
                ),
                child: Image.asset(imagespath.onboardingimage)),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Align(
                child: Text(
                  S.of(context)!.DoctorAppointment,
                  textAlign: TextAlign.center,
                  style: Textstyle.font32BlueW700,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
