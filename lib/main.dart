import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtykingdom/wep_module/presentation/pages/wep_details.dart';
import 'package:realtykingdom/wep_module/presentation/pages/wep_home.dart';
import 'mobile_module/presentation/pages/mobile_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Realty Kingdom',
      home: LayoutBuilder(
        builder: (context, constraints) {
          return ScreenUtilInit(
            designSize: constraints.maxWidth <= 200
                ? const Size(360, 690)
                : const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              print(constraints.maxWidth);
              if (constraints.maxWidth <= 200) {
                return const MobileHome(); // Change this to your mobile layout
              } else {
                return const DetailsScreen(); // Change this to your web layout
              }
            },
          );
        },
      ),
    );
  }
}
