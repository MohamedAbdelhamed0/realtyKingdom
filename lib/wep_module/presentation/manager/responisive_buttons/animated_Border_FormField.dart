import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedBorderFormField extends StatefulWidget {
  final String labelText;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final int maxLines; // Add maxLines parameter

  const AnimatedBorderFormField({
    Key? key,
    required this.labelText,
    this.validator,
    this.onSaved,
    this.maxLines = 1, // Default value is set to 1
  }) : super(key: key);

  @override
  State<AnimatedBorderFormField> createState() =>
      _AnimatedBorderFormFieldState();
}

class _AnimatedBorderFormFieldState extends State<AnimatedBorderFormField> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          border: Border.all(
            color: isHovered
                ? const Color(0xFFF3051B)
                : Colors.grey, // Change the border color when hovered
            width: isHovered ? 2 : 1, // Make the border thicker when hovered
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: TextFormField(
          maxLines: widget.maxLines, // Use maxLines from the widget parameters
          decoration: InputDecoration(
            labelText: widget.labelText,
            border: const OutlineInputBorder(
                borderSide: BorderSide.none), // Hide the default border
          ),
          validator: widget.validator,
          onSaved: widget.onSaved,
        ),
      ),
    );
  }
}
