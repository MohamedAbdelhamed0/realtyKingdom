import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevatedButtonWidget extends StatefulWidget {
  final String floor;
  final VoidCallback onPressed;
  final Color color;

  const ElevatedButtonWidget(
      {Key? key,
      required this.floor,
      required this.onPressed,
      required this.color})
      : super(key: key);

  @override
  _OutlineButtonWidgetState createState() => _OutlineButtonWidgetState();
}

class _OutlineButtonWidgetState extends State<ElevatedButtonWidget> {
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
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: isHovered
                ? const Color(0xFFF3051B)
                : const Color(0xFFF3051B).withOpacity(.7),
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
                    color: Colors.white,
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
