import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtykingdom/extantsions.dart';
import 'package:realtykingdom/wep_module/presentation/widgets_wep_details/MyCustom_Form.dart';
import 'package:realtykingdom/wep_module/presentation/widgets_wep_details/readMore_text.dart';

import '../manager/animation_icon_and_text.dart';
import '../manager/text_style.dart';

class DescriptionRow extends StatelessWidget {
  const DescriptionRow({super.key});

  @override
  Widget build(BuildContext context) {
    String text =
        'Lorem ipsum dolor sit amet consectetur. T consectetur. Tristique habitant ipsum quam nam. Mi elit tortor tellus blandit nulla tortor cons consectetur. Tristique habitant ipsum quam nam. Mi elit tortor tellus blandit nulla tortor cons consectetur. Tristique habitant ipsum quam nam. Mi elit tortor tellus blandit nulla tortor cons consectetur. Tristique habitant ipsum quam nam. Mi elit tortor tellus blandit nulla tortor consristique habitant ipsum quam nam. Mi elit tortor tellus blandit nulla tortor consequat tortor. Varius eu cras mattis consequat. Convallis tristique fringilla ut amet aliquam. Integer fringilla sollicitudin enim morbi hac neque. Malesuada leo interdum pellentesque orci et. Nunc bibendum purus ipsum ut in ligula scelerisque placerat sed. Aliquam vitae sapien sed vitae vitae massa. A viverra nunc ante habitant maecenas vestibulum ut montes. Morbi lectus faucibus orci metus sed quis. Quis enim neque diam porta. Maecenas semper sit enim consequat dictum libero turpis ac viverra. Velit fames enim non morbi. . ';

    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: SizedBox(
        child: IntrinsicHeight(
          child: Row(children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 11.20,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: customTextStyle(
                          fontSize: 10.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ReadMoreText(
                        text: text,
                      ),
                      20.sbh,
                      Text(
                        'Feature',
                        style: customTextStyle(
                          fontSize: 10.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const IconTextWidget(
                                  text: 'Smart Key Access',
                                  icon: Icons.key,
                                  iconHover: Icons.keyboard_alt_outlined,
                                  color: Color(0xFFF3051B),
                                  hoverColor: Colors.black,
                                ),
                                5.sbh,
                                const IconTextWidget(
                                  text: 'Central Gas System',
                                  icon: Icons.gas_meter,
                                  iconHover: Icons.gas_meter_outlined,
                                  color: Color(0xFFF3051B),
                                  hoverColor: Colors.black,
                                ),
                                5.sbh,
                                const IconTextWidget(
                                  text: 'Spacious Apartments',
                                  icon: Icons.cake,
                                  iconHover: Icons.cake_outlined,
                                  color: Color(0xFFF3051B),
                                  hoverColor: Colors.black,
                                ),
                                5.sbh,
                                const IconTextWidget(
                                  text: 'Private Gym',
                                  icon: Icons.sports_gymnastics,
                                  iconHover: Icons.sports_gymnastics_outlined,
                                  color: Color(0xFFF3051B),
                                  hoverColor: Colors.black,
                                ),
                              ]),
                          10.sbw,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const IconTextWidget(
                                text: 'Ducted AC System',
                                icon: Icons.ac_unit,
                                iconHover: Icons.severe_cold_outlined,
                                color: Color(0xFFF3051B),
                                hoverColor: Colors.black,
                              ),
                              5.sbh,
                              const IconTextWidget(
                                text: 'Private Terraces',
                                icon: Icons.private_connectivity,
                                iconHover: Icons.private_connectivity_outlined,
                                color: Color(0xFFF3051B),
                                hoverColor: Colors.black,
                              ),
                              5.sbh,
                              const IconTextWidget(
                                text: 'Swimming Pool',
                                icon: Icons.beach_access,
                                iconHover: Icons.beach_access_outlined,
                                color: Color(0xFFF3051B),
                                hoverColor: Colors.black,
                              ),
                              5.sbh,
                              const IconTextWidget(
                                text: 'Smart Lighting',
                                icon: Icons.light_outlined,
                                iconHover: Icons.light,
                                color: Color(0xFFF3051B),
                                hoverColor: Colors.black,
                              ),
                            ],
                          )
                        ],
                      ),
                      20.sbh,
                    ]),
              ),
            ),
            10.sbw,
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 11.20,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const IconTextWidget(
                        text: 'Talk to an agent',
                        icon: Icons.person,
                        iconHover: Icons.person_2_outlined,
                        color: Color(0xFFF3051B),
                        hoverColor: Colors.black,
                      ),
                      5.sbh,
                      const MyCustomForm()
                    ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
