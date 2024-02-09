import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtykingdom/wep_module/presentation/manager/navigation_row.dart';

import '../manager/Information_row.dart';
import '../widgets_wep_home/fillter_row.dart';
import '../widgets_wep_home/last_row.dart';
import '../widgets_wep_home/photo_row.dart';
import '../widgets_wep_home/search_row.dart';
import '../widgets_wep_home/slogan_row.dart';

class WepHome extends StatelessWidget {
  const WepHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InformationRow(),
            NavigationRow(),
            SearchRow(),
            SloganRow(),
            FilterRow(),
            PhotoRow(),
            LastRow(),
          ],
        ),
      ),
    );
  }
}
