import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realtykingdom/extantsions.dart';
import 'package:realtykingdom/wep_module/presentation/manager/navigation_row.dart';
import '../manager/Information_row.dart';
import '../widgets_wep_details/description_row.dart';
import '../widgets_wep_details/over_view_Row.dart';
import '../widgets_wep_details/similar_properties_Row.dart';
import '../widgets_wep_details/unit_widget_Colum.dart';
import '../widgets_wep_home/fillter_row.dart';
import '../widgets_wep_details/google_map_row.dart';
import '../widgets_wep_home/last_row.dart';
import '../widgets_wep_home/photo_row.dart';
import '../widgets_wep_home/search_row.dart';
import '../widgets_wep_home/slogan_row.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InformationRow(),
            const NavigationRow(),
            const UnitWidgetColum(),
            10.sbh,
            const OverViewRow(),
            20.sbh,
            const DescriptionRow(),
            20.sbh,
            const LastRow(),
          ],
        ),
      ),
    );
  }
}

// final List<String> imageUrls = [
//     'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//     'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//     'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//     'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//   ];
