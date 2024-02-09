import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtykingdom/extantsions.dart';
import 'package:realtykingdom/wep_module/presentation/manager/text_style.dart';

class OverViewRow extends StatelessWidget {
  const OverViewRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: IntrinsicHeight(
        child: Flex(
          direction: Axis.horizontal,
          mainAxisSize: MainAxisSize.max,
          children: [
            buildExpandedOverView(),
            5.sbw,
            buildVidoePlayer(),
          ],
        ),
      ),
    );
  }

  Widget buildExpandedOverView() {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
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
      padding:
          EdgeInsets.only(left: 20.sp, right: 20.sp, top: 5.sp, bottom: 5.sp),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          buildColumnOverViewText(),
          10.sbw,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.sbh,
              buildColumnIcon(
                icon: Icons.bed,
                text: '2',
                text2: 'Bedroom',
              ),
              buildColumnIcon(
                icon: Icons.garage,
                text: '1',
                text2: 'Garage',
              ),
            ],
          ),
          5.sbw,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.sbh,
              buildColumnIcon(
                icon: Icons.bathroom_outlined,
                text: '3',
                text2: 'Bathrooms',
              ),
              buildColumnIcon(
                icon: Icons.photo_size_select_large,
                text: '289',
                text2: 'Property Size',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildVidoePlayer() {
    return Expanded(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
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
            width: double.infinity,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
            ),
          ),
          IconButton(
            hoverColor: const Color(0xFFF3051B),
            icon: const Icon(Icons.play_arrow, color: Colors.white),
            iconSize: 48.0, // You can adjust the size
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget buildColumnIcon({
    required IconData icon,
    required String text,
    required String text2,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.sbh,
        Row(
          children: [
            Icon(
              icon,
              color: const Color(0xFFF3051B),
              size: 6.sp,
            ),
            2.sbw,
            Text(
              text,
              style: customTextStyle(
                color: Colors.black,
                fontSize: 6.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Text(
          text2,
          style: customTextStyle(
            color: Colors.black,
            fontSize: 6.sp,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }

  Column buildColumnOverViewText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Overview',
          style: customTextStyle(
            color: const Color(0xFFF3051B),
            fontSize: 8.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        10.sbh,
        Text(
          'Apartment',
          style: customTextStyle(
            color: Colors.black,
            fontSize: 8.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Property Type',
          style: customTextStyle(
            color: const Color(0xFF737373),
            fontSize: 8.sp,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
