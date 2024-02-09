import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtykingdom/wep_module/presentation/manager/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

enum DataType {
  email,
  phoneNumber,
  address,
}

class InteractiveRow extends StatefulWidget {
  final IconData icon;
  final String data;
  final DataType dataType;

  const InteractiveRow({
    Key? key,
    required this.icon,
    required this.data,
    required this.dataType,
  }) : super(key: key);

  @override
  State<InteractiveRow> createState() => _InteractiveRowState();
}

class _InteractiveRowState extends State<InteractiveRow>
    with SingleTickerProviderStateMixin {
  bool _isHovering = false;
  late final AnimationController _animationController;
  late final Animation<double> _opacityAnimation;
  late final Animation<Offset> _slideAnimation; // For sliding animation

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    // Opacity tween
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
    // Slide tween
    _slideAnimation =
        Tween<Offset>(begin: const Offset(15.0, 0.0), end: Offset.zero).animate(
            CurvedAnimation(
                parent: _animationController, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleInteraction() async {
    final ClipboardData data = ClipboardData(text: widget.data);
    await Clipboard.setData(data);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Text Copied!'),
        duration: Duration(seconds: 1),
      ),
    );

    // Adding this switch to still handle the original behavior
    switch (widget.dataType) {
      case DataType.email:
        _launchUrl('mailto:${widget.data}');
        break;
      case DataType.phoneNumber:
        _launchUrl('tel:${widget.data}');
        break;
      case DataType.address:
        _launchUrl(
            'https://www.google.com/maps/search/?api=1&query=${Uri.encodeComponent(widget.data)}');
        break;
      default:
        break;
    }
  }

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch $urlString')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() => _isHovering = true);
        _animationController.forward();
      },
      onExit: (_) {
        setState(() => _isHovering = false);
        _animationController.reverse();
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _handleInteraction,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 10.sp,
              color: const Color(0xFFF3051B),
            ),
            SizedBox(width: 2.w),
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return ClipRect(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    widthFactor: _opacityAnimation
                        .value, // You dynamically adjust the width based on animation
                    child: Transform.translate(
                      offset: _slideAnimation.value,
                      child: Opacity(
                        opacity: _opacityAnimation.value,
                        child: child,
                      ),
                    ),
                  ),
                );
              },
              child: Text(widget.data, style: customTextStyle(fontSize: 5.sp)),
            ),
          ],
        ),
      ),
    );
  }
}
