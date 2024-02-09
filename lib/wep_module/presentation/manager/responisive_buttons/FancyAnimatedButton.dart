import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FancyAnimatedButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle textStyle;

  const FancyAnimatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.textStyle, // Make sure this textStyle has a non-null fontSize for copyWith to work effectively.
  }) : super(key: key);

  @override
  State<FancyAnimatedButton> createState() => _FancyAnimatedButtonState();
}

class _FancyAnimatedButtonState extends State<FancyAnimatedButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    // Ensure textStyle fontSize is non-null and properly initialized.
    final baseTextStyle = widget.textStyle.fontSize != null
        ? widget.textStyle.copyWith(color: Colors.white, fontSize: 4.sp)
        : widget.textStyle.copyWith(
            fontSize: 8.sp,
            color: Colors.white); // Fallback fontSize; adjust as needed.

    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xFFF3051B), // Fixed background color
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                Colors.transparent), // Transparent button background
            elevation: MaterialStateProperty.all(0), // No shadow
            overlayColor: MaterialStateProperty.all(
                Colors.transparent), // No overlay color
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          child: AnimatedDefaultTextStyle(
            style: baseTextStyle.copyWith(
              fontSize: isHovered
                  ? baseTextStyle.fontSize! * 1.1
                  : baseTextStyle.fontSize,
            ),
            duration: const Duration(milliseconds: 200),
            child: Text(widget
                .text), // Removed style from here to allow AnimatedDefaultTextStyle to control it.
          ),
        ),
      ),
    );
  }
}
