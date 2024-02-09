import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHoverButton extends StatefulWidget {
  final String text;
  final IconData iconData;
  final VoidCallback onPressed;

  const MyHoverButton({
    super.key,
    required this.text,
    required this.iconData,
    required this.onPressed,
  });

  @override
  _MyHoverButtonState createState() => _MyHoverButtonState();
}

class _MyHoverButtonState extends State<MyHoverButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.text,
      child: MouseRegion(
        onEnter: (event) => _animationController.forward(),
        onExit: (event) => _animationController.reverse(),
        child: GestureDetector(
          onTap: widget.onPressed,
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              Color backgroundColor = Color.lerp(
                  Colors.transparent,
                  const Color(0xFFF3051B),
                  _animationController
                      .value)!; // Interpolates between two colors

              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                decoration: BoxDecoration(
                  color:
                      backgroundColor, // Applies the background color based on hover state
                  borderRadius: BorderRadius.circular(
                      12), // Optional: Adds rounded corners
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Opacity(
                      opacity: 1.0 - _animationController.value,
                      child: Text(
                        widget.text,
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            color: const Color(0xFFF3051B),
                            fontSize: 8.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: _animationController.value,
                      child: Icon(widget.iconData,
                          size: 8.sp,
                          color: Colors
                              .white), // Optional: Change icon color for visibility
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
