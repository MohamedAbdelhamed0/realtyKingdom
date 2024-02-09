import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtykingdom/extantsions.dart';

import '../manager/Information_row.dart';
import '../manager/responisive_buttons/outline_Button.dart';

class UnitItem extends StatelessWidget {
  const UnitItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  child: CachedNetworkImage(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFD0D0D0),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25)),
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      'Modern apartment in the city center',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 6.sp,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    3.sbh,
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Icon(
                                Icons.where_to_vote_outlined,
                                size: 5.sp,
                              ),
                            ),
                            2.sbw,
                            Text(
                              '518-520 5th Ave,New York, USA',
                              style: TextStyle(fontSize: 5.sp),
                            )
                          ],
                        )
                      ],
                    ),
                    3.sbh,
                    Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      '\$1.300.000',
                      style: TextStyle(
                        color: const Color(0xFFF3051B),
                        fontSize: 6.sp,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    3.sbh,
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Icon(
                                  Icons.bedroom_child_outlined,
                                  color: const Color(0xFFF3051B),
                                  size: 5.sp,
                                ),
                              ),
                              2.sbw,
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  'Bedroom: 3',
                                  style: TextStyle(fontSize: 5.sp),
                                ),
                              ),
                              3.sbw,
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Icon(
                                  Icons.bathroom_outlined,
                                  color: const Color(0xFFF3051B),
                                  size: 5.sp,
                                ),
                              ),
                              2.sbw,
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  'Bedroom: 3',
                                  style: TextStyle(fontSize: 5.sp),
                                ),
                              ),
                              3.sbw,
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Icon(
                                  Icons.photo_size_select_large,
                                  color: const Color(0xFFF3051B),
                                  size: 5.sp,
                                ),
                              ),
                              2.sbw,
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  ' size:1100 ft',
                                  style: TextStyle(fontSize: 5.sp),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    3.sbh,
                    FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: OutlineButtonWidget(
                              floor: 'DETAILS',
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    10.sbh,
                  ],
                ),
              ),
            )
          ],
        ),
        Positioned(
          top: 0.h,
          left: 0.h,
          child: _buildRatingIcon(),
        ),
      ],
    );
  }

  Widget _buildRatingIcon() {
    return Container(
      padding: EdgeInsets.all(2.r),
      width: 28.w,
      height: 32.h,
      decoration: BoxDecoration(
        color: Color(0xFF0C2950),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(120.r),
          topLeft: Radius.circular(120.r),
          bottomRight: Radius.circular(120.r),
        ),
      ),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              size: 10.sp,
              color: Colors.yellow,
            ),
            SizedBox(width: 2.w), // Use .w for ScreenUtil width adjustments
            Text(
              style: TextStyle(fontSize: 10.sp, color: Colors.white),
              '4.91 (484)',
            ),
          ],
        ),
      ),
    );
  }
}
