import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension EmptPadding on num {
  SizedBox get sbh => SizedBox(
        height: toDouble().h,
      );
  SizedBox get sbw => SizedBox(
        width: toDouble().w,
      );
}
