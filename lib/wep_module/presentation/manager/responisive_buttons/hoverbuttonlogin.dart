import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HoverButton extends StatefulWidget {
  final VoidCallback onLoginPressed;
  final VoidCallback onRegisterPressed;

  const HoverButton({
    Key? key,
    required this.onLoginPressed,
    required this.onRegisterPressed,
  }) : super(key: key);

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 35.h,
        width: isHovering ? 60.w : 50.w, // Adjusted to fit both buttons
        decoration: BoxDecoration(
          color: isHovering ? Colors.white : Color(0xFFF3051B),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: isHovering
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButton(
                    text: 'Login',
                    onPressed: widget.onLoginPressed,
                    color: Color(0xFFF3051B),
                  ),
                  SizedBox(width: 5.w),
                  _buildButton(
                    text: 'Register',
                    onPressed: widget.onRegisterPressed,
                    color: Color(0xFFF3051B),
                  ),
                ],
              )
            : Center(
                child: Text(
                  "Login/Register",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 3.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
      ),
    );
  }

  Widget _buildButton({
    required String text,
    required VoidCallback onPressed,
    required Color color,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 3.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
