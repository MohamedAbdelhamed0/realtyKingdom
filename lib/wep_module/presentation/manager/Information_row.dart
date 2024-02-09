import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:realtykingdom/extantsions.dart';
import 'package:realtykingdom/wep_module/presentation/manager/responisive_buttons/hoverbuttonlogin.dart';
import 'package:realtykingdom/wep_module/presentation/widgets_wep_home/buildRowDetailsAnimation.dart';

class InformationRow extends StatelessWidget {
  const InformationRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        55.sbw,
        const InteractiveRow(
            icon: CupertinoIcons.phone,
            data: '(123)345 6478',
            dataType: DataType.phoneNumber),
        5.sbw,
        const InteractiveRow(
            icon: Icons.where_to_vote_outlined,
            data: '518-520 5th Ave,New York, USA',
            dataType: DataType.address),
        5.sbw,
        const InteractiveRow(
            icon: Icons.email_outlined,
            data: 'Support@tanglbledess.net',
            dataType: DataType.email),
        // HoverButton(
        //   onLoginPressed: () {},
        //   onRegisterPressed: () {},
        // ),
        // buildRowDetails(icon: CupertinoIcons.phone, string: '(123)345 6478'),
        // 5.sbw,
        // buildRowDetails(
        //     icon: Icons.where_to_vote_outlined,
        //     string: '518-520 5th Ave,New York, USA'),
        // 5.sbw,
        // buildRowDetails(
        //     icon: Icons.email_outlined, string: 'Support@tanglbledess.net'),
        const Spacer(),
        Container(
          height: 35.h,
          width: 50.w,
          decoration: const BoxDecoration(color: Color(0xFFF3051B)),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Login/Register',
              style: TextStyle(
                color: Colors.white,
                fontSize: 6.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        10.sbw,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            buildIconButtonSocialMedia(
                icon: LineIcons.facebook, onPressed: () {}, label: 'FaceBook'),
            buildIconButtonSocialMedia(
                icon: LineIcons.twitter, onPressed: () {}, label: 'x'),
            buildIconButtonSocialMedia(
                icon: LineIcons.instagram,
                onPressed: () {},
                label: 'instagram'),
          ],
        ),
      ],
    );
  }

  IconButton buildIconButtonSocialMedia({
    required IconData icon,
    required String label,
    required VoidCallback onPressed, // Make onPressed required
  }) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      icon: FittedBox(
        fit: BoxFit.scaleDown,
        child: Icon(
          size: 10.sp,
          icon,
        ),
      ),
      tooltip: label, // You can use the label as a tooltip if needed
    );
  }
}

Row buildRowDetails({required IconData icon, required String string}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      FittedBox(
        fit: BoxFit.scaleDown,
        child: Icon(
          icon,
          size: 4.sp,
        ),
      ),
      2.sbw,
      FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          string,
          style: GoogleFonts.nunito(
            textStyle: TextStyle(
              fontSize: 4.sp,
            ),
          ),
        ),
      )
    ],
  );
}
