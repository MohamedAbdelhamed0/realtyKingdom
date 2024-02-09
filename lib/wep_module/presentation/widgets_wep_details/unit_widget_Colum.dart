import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realtykingdom/extantsions.dart';
import 'package:realtykingdom/wep_module/presentation/widgets_wep_details/photo_Carousel.dart';
import '../manager/responisive_buttons/elevated_button.dart';
import '../manager/responisive_buttons/outline_Button.dart';

class UnitWidgetColum extends StatelessWidget {
  const UnitWidgetColum({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      width: double.infinity,
      color: const Color(0xFFF6F6F6),
      child: Column(children: [
        Row(
          children: [
            Text(
              'Modern apartment in the city center',
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'OMR ',
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        color: const Color(0xFFF3051B),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: '11.000.000',
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        5.sbh,
        Row(
          children: [
            Icon(
              Icons.gps_fixed_sharp,
              color: const Color(0xFF979797),
              size: 6.w,
            ),
            Text(
              '122-140N Morgan, chicago, iL 60607,USA',
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  color: const Color(0xFF979797),
                  fontSize: 6.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        5.sbh,
        Row(
          children: [
            Text(
              'Choose Floor',
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 7.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            5.sbw,
            OutlineButtonWidget(
              floor: '1st Floor',
              onPressed: () {},
            ),
            5.sbw,
            OutlineButtonWidget(
              floor: '2st Floor',
              onPressed: () {},
            ),
            5.sbw,
            OutlineButtonWidget(
              floor: '3st Floor',
              onPressed: () {},
            ),
            ElevatedButtonWidget(
              floor: '3st Floor',
              onPressed: () {},
              color: const Color(0xFFF3051B),
            ),
          ],
        ),
        10.sbh,
        Container(
          width: double.infinity,
          height: 40.h,
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFF4CD964)),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Number of units available : ',
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  children: [
                    TextSpan(
                      text: '2',
                      style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        10.sbh,
        Container(
          width: double.infinity,
          height: 500.h,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: CachedNetworkImage(
              width: double.infinity,
              fit: BoxFit.cover,
              imageUrl:
                  'https://plus.unsplash.com/premium_photo-1661335257817-4552acab9656?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
          ),
        ),
        10.sbh,
        Row(
          children: [
            buildContainerFeatured(
                text: 'Featured',
                color: Colors.white,
                background: const Color(0xFFF3051B)),
            5.sbw,
            buildContainerFeatured(
                text: 'For Sale',
                color: Colors.white,
                background: const Color(0xFF454545))
          ],
        ),
        5.sbh,
        PhotoCarousel(),
      ]),
    );
  }

  Container buildContainerFeatured(
      {required String text, required Color color, required Color background}) {
    return Container(
      width: 50.w,
      height: 40.h,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(text,
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  color: color,
                  fontSize: 6.sp,
                  fontWeight: FontWeight.w500,
                ),
              )),
        ],
      ),
    );
  }
}
