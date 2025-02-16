part of 'login.dart';

class Logintextfiled extends StatefulWidget {
  const Logintextfiled({super.key});

  @override
  State<Logintextfiled> createState() => _LogintextfiledState();
}

class _LogintextfiledState extends State<Logintextfiled> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          CustomTextField(
            HintText: S.of(context)!.Email,
          ),
          Gap(14.h),
          CustomTextField(
            HintText: S.of(context)!.Password,
            obscureText: isObscure,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: isObscure
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility)),
          ),
          Gap(8.h),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child:   Text(
                S.of(context)!.ForgotPassword,
                style: Textstyle.font12BlueW400,
              ),
            ),
          ),
          Gap(28.h),
          CustomButton(text: S.of(context)!.Login, onPressed: () {}),
        ],
      ),
    );
  }
}
