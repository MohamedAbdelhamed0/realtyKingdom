import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realtykingdom/extantsions.dart';
import 'package:realtykingdom/wep_module/presentation/manager/text_style.dart';

import '../../../assets_path.dart';

class LastRow extends StatelessWidget {
  const LastRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25, left: 25, top: 15, bottom: 15),
      decoration: const BoxDecoration(color: Color(0xFF484848)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildImage(),
                10.sbh,
                buildText(),
                ...buildDetailsWithSpacing(),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Features',
                  style: customTextStyle(
                    color: Colors.white,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                5.sbh,
                buildRow(
                  widget: buildContainerFeatures(text: 'Air Conditioning'),
                  widget2: buildContainerFeatures(text: 'Dishwasher'),
                ),
                4.sbh,
                buildRow(
                  widget: buildContainerFeatures(text: 'Fireplace'),
                  widget2: buildContainerFeatures(text: 'Microwave'),
                ),
                4.sbh,
                buildRow(
                  widget: buildContainerFeatures(text: 'Patio'),
                  widget2: buildContainerFeatures(text: 'Microwave'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildImage(),
                10.sbh,
                buildText(),
                ...buildDetailsWithSpacing(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  FittedBox buildText() {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        'After a time we drew near \nthe road, and as we did so we ',
        style: GoogleFonts.nunito(
          textStyle: TextStyle(
            color: const Color(0xFFBCBCBC),
            fontSize: 4.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Image buildImage() {
    return Image.asset(
      width: 50.w,
      height: 50.h,
      fit: BoxFit.cover,
      PathSvg.logo,
    );
  }

  Row buildRow({required Widget widget, required Widget widget2}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        widget,
        2.sbw,
        widget2,
      ],
    );
  }

  Container buildContainerFeatures({required String text}) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        // 'Air Conditioning',
        text,
        style: GoogleFonts.nunito(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 4.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Row buildRowDetails({required IconData icon, required String string}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Icon(
            color: Colors.white,
            icon,
            size: 4.sp,
          ),
        ),
        2.sbw,
        Text(
          string,
          style: GoogleFonts.nunito(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 4.sp,
            ),
          ),
        )
      ],
    );
  }

  List<Widget> buildDetailsWithSpacing() {
    List<Widget> widgets = [
      5.sbh,
      buildRowDetails(icon: CupertinoIcons.phone, string: '(123)345 6478'),
      5.sbh,
      buildRowDetails(
          icon: Icons.where_to_vote_outlined,
          string: '518-520 5th Ave,New York, USA'),
      5.sbh,
      buildRowDetails(
          icon: Icons.email_outlined, string: 'Support@tanglbledess.net'),
    ];

    return widgets;
  }
}
