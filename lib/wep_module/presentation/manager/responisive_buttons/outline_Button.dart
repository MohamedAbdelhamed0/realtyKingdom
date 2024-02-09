import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlineButtonWidget extends StatefulWidget {
  final String floor;
  final VoidCallback onPressed;

  const OutlineButtonWidget(
      {Key? key, required this.floor, required this.onPressed})
      : super(key: key);

  @override
  _OutlineButtonWidgetState createState() => _OutlineButtonWidgetState();
}

class _OutlineButtonWidgetState extends State<OutlineButtonWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          width: 30.w,
          height: 30.h,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color:
                isHovered ? Colors.grey.withOpacity(0.5) : Colors.transparent,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: isHovered ? Colors.black87 : const Color(0xFFF3051B),
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.floor,
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: const Color(0xFFF3051B),
                    fontSize: 4.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
