import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle customTextStyle({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
}) {
  return GoogleFonts.nunito(
    textStyle: TextStyle(
      color:
          color ?? Colors.black, // Use black as default color if not provided
      fontSize:
          fontSize ?? 6.sp, // Use 6.sp as default fontSize if not provided
      fontWeight: fontWeight ??
          FontWeight.w500, // Use FontWeight.w500 as default if not provided
    ),
  );
}
