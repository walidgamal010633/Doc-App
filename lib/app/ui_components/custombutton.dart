import 'package:docapp/app/style/textstyle/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text,required this.onPressed});
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 45.h,
        width: double.infinity,
        child: ElevatedButton(
            style: ButtonStyle(
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16))),
                backgroundColor: WidgetStatePropertyAll(
                  Color(0xff247cFF),
                )),
            onPressed: onPressed,
            child: Text(
              text,
              style: Textstyle.font16WhiteW500,
            )),
      ),
    );
  }
}
