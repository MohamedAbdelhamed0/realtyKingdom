import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../manager/text_style.dart';

class ReadMoreText extends StatefulWidget {
  final String text;

  const ReadMoreText({super.key, required this.text});

  @override
  ReadMoreTextState createState() => ReadMoreTextState();
}

class ReadMoreTextState extends State<ReadMoreText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final shouldTruncate = widget.text.length > 100;

    final truncatedText = '${widget.text.substring(0, 1000)}...';

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: child,
        );
      },
      child: isExpanded || !shouldTruncate
          ? Column(
              key: const ValueKey('expanded'),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.text,
                  style: customTextStyle(fontSize: 4.sp),
                ),
                GestureDetector(
                  onTap: () => setState(() => isExpanded = false),
                  child: Text(
                    'Show Less',
                    style: customTextStyle(
                      fontSize: 4.sp,
                      color: const Color(0xFFF3051B),
                    ),
                  ),
                )
              ],
            )
          : Column(
              key: const ValueKey('truncated'),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shouldTruncate ? truncatedText : widget.text,
                  maxLines: 4,
                  style: customTextStyle(fontSize: 4.sp),
                ),
                GestureDetector(
                  onTap: () => setState(() => isExpanded = true),
                  child: Text(
                    'Show More',
                    style: customTextStyle(
                      fontSize: 4.sp,
                      color: const Color(0xFFF3051B),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
