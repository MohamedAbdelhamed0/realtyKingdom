import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtykingdom/extantsions.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 500.h,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 500.h,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Modern Apartment',
                          style: TextStyle(
                            color: const Color(0xFF0C2950),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Exclusive Listings',
                          style: TextStyle(
                            color: const Color(0xFFF3051B),
                            fontSize: 20.sp,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 500.h,
                  child: Image.asset('assets/svg/logo/big building.png',
                      fit: BoxFit.cover, height: 500.h),
                ),
              ),
            ],
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Container(
                  width: 290.w,
                  height: 60.h,
                  padding: EdgeInsets.all(15),
                  clipBehavior: Clip.antiAlias,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F0C2950),
                        blurRadius: 55.40,
                        offset: Offset(0, 23),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(children: [
                    Expanded(
                      flex: 3,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search State, City or Area'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStatePropertyAll(Size(30.w, 38.h)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              backgroundColor: const MaterialStatePropertyAll(
                                  Color(0xFFF3051B))),
                          onPressed: () {},
                          child: const FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Search Property',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                height: 0,
                              ),
                            ),
                          )),
                    )
                  ]),
                ),
                20.sbh,
              ],
            )),
      ],
    );
  }
}
