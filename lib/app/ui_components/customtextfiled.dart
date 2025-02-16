import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.HintText,
      this.suffixIcon,
      this.obscureText });
  final String HintText;
  final IconButton? suffixIcon;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
        decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(
            color: Color(0xff247cFF), width: 1.3),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(
            color: Color.fromARGB(255, 206, 214, 218), width: 1.3),
      ),
      suffixIcon: suffixIcon,
      suffixIconColor: Color(0xFFAAAAAA),
      
      hintText: HintText,
      hintStyle: TextStyle(color: Color(0xFFAAAAAA), fontSize: 14.sp),
      filled: true,
      fillColor: const Color.fromARGB(255, 249, 250, 251),
    ));
  }
}
