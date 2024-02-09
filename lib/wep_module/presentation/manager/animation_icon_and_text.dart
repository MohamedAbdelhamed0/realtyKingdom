import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtykingdom/wep_module/presentation/manager/text_style.dart';

class IconTextWidget extends StatefulWidget {
  final IconData icon;
  final IconData iconHover;
  final String text;
  final Color color;
  final Color hoverColor;

  const IconTextWidget({
    Key? key,
    required this.icon,
    required this.iconHover,
    required this.text,
    this.color = Colors.black,
    this.hoverColor = Colors.blue,
  }) : super(key: key);

  @override
  State<IconTextWidget> createState() => _IconTextWidgetState();
}

class _IconTextWidgetState extends State<IconTextWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      child: Row(
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: Icon(
              size: 6.sp,
              isHovered ? widget.iconHover : widget.icon,
              color: isHovered ? widget.hoverColor : widget.color,
              key: ValueKey<bool>(isHovered),
            ),
          ),
          SizedBox(width: 4.w), // Add some spacing between the icon and text
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            child: Text(
              widget.text,
              style: customTextStyle(
                  fontSize: 6.sp,
                  color: isHovered ? widget.hoverColor : widget.color),
            ),
          ),
        ],
      ),
    );
  }
}
