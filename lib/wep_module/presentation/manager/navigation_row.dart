import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realtykingdom/extantsions.dart';
import 'package:realtykingdom/wep_module/presentation/manager/responisive_buttons/myHover_Button.dart';

import '../widgets_wep_details/vido_player.dart';

class NavigationRow extends StatelessWidget {
  const NavigationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          width: 50.w,
          height: 50.h,
          fit: BoxFit.scaleDown,
          'assets/svg/logo/logo.png',
        ),
        20.sbw,
        MyHoverButton(
          text: 'Home',
          iconData: Icons.home,
          onPressed: () {},
        ),
        // buildText(
        //   text: 'Home',
        //   onPressed: () {
        //     Navigator.of(context)
        //         .push(MaterialPageRoute(builder: (context) => VideoScreen()));
        //   },
        // ),
        4.sbw,
        MyHoverButton(
          text: 'pages',
          iconData: Icons.pages,
          onPressed: () {},
        ),
        // buildText(
        //   text: 'pages',
        //   onPressed: () {},
        // ),
        4.sbw,
        MyHoverButton(
          text: 'Real Estate',
          iconData: Icons.real_estate_agent_outlined,
          onPressed: () {},
        ),
        // buildText(
        //   text: 'Real Estate',
        //   onPressed: () {},
        // ),
        4.sbw,
        MyHoverButton(
          text: 'Blog',
          iconData: Icons.transit_enterexit,
          onPressed: () {},
        ),
        // buildText(
        //   text: 'Blog',
        //   onPressed: () {},
        // ),
        4.sbw,
        MyHoverButton(
          text: 'Contact',
          iconData: Icons.phone,
          onPressed: () {},
        ),
        // buildText(
        //   text: 'Contact',
        //   onPressed: () {},
        // ),
      ],
    );
  }

  Widget buildText({
    required String text,
    IconData? iconData, // Make IconData optional by using IconData?
    required VoidCallback onPressed,
  }) {
    return Tooltip(
      message: text,
      child: TextButton.icon(
        style:
            ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(35.w, 20.h))),
        onPressed: onPressed,
        label: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            text,
            style: GoogleFonts.nunito(
              textStyle: TextStyle(
                color: const Color(0xFFF3051B),
                fontSize: 8.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        icon: iconData != null
            ? FittedBox(
                fit: BoxFit.scaleDown,
                child: Icon(
                  iconData,
                  size: 7.sp,
                ),
              )
            : const SizedBox
                .shrink(), // If no icon is provided, return an empty SizedBox
      ),
    );
  }
}
