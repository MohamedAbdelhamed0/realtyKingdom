import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets_wep_home/unit_item.dart';

class SimilarPropertiesRow extends StatelessWidget {
  const SimilarPropertiesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000.h,
      width: double.infinity,
      padding: EdgeInsets.all(8.w),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: GridView.builder(
        physics:
            const NeverScrollableScrollPhysics(), // To disable GridView's own scrolling within a SingleChildScrollView
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Two columns
          crossAxisSpacing: 4.w, // Space between columns
          mainAxisSpacing: 10.h,
        ),
        itemCount: 9, // Assuming you have 8 items
        itemBuilder: (context, index) {
          return const UnitItem(); // Your custom widget
        },
      ),
    );
  }
}
