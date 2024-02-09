import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtykingdom/extantsions.dart';
import 'package:realtykingdom/wep_module/presentation/widgets_wep_home/price_range_selector.dart';
import 'package:realtykingdom/wep_module/presentation/widgets_wep_home/street_Dropdown.dart';
import 'package:realtykingdom/wep_module/presentation/widgets_wep_home/unit_item.dart';
import 'package:realtykingdom/wep_module/presentation/widgets_wep_home/zipcode_dropdown.dart';

import 'amenity_filter_widget.dart';
import 'city_drop_down.dart';
import 'filter_widget_customRadioListTile.dart';
import 'offer_type_DropdownState.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
      color: const Color(0xFFD0D0D0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: buildColumnFilters(),
          ),
          5.sbw,
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const Text(
                  'Feature',
                  style: TextStyle(
                    color: Color(0xFFF3051B),
                    fontSize: 40,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1500,
                  padding: EdgeInsets.all(8.w),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: GridView.builder(
                    padding: EdgeInsets.all(5.w),
                    physics:
                        const NeverScrollableScrollPhysics(), // To disable GridView's own scrolling within a SingleChildScrollView

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Two columns
                      crossAxisSpacing: 4.w, // Space between columns
                      mainAxisSpacing: 10.h,
                    ),
                    itemCount: 8, // Assuming you have 8 items
                    itemBuilder: (context, index) {
                      return const UnitItem(); // Your custom widget
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildColumnFilters() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            10.sbh,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.filter_alt_outlined,
                  size: 10.sp,
                  color: const Color(0xFF0C2950),
                ),
                Text(
                  'Filters',
                  style: TextStyle(
                    color: const Color(0xFF0C2950),
                    fontSize: 10.sp,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                )
              ],
            ),
            4.sbh,
            buildText(
              title: 'Property Type',
            ),
            const FilterWidget(),
            buildText(
              title: 'Offer Type',
            ),
            const OfferTypeDropdown(),
            buildText(
              title: 'Price',
            ),
            const PriceRangeSelector(),
            buildText(
              title: 'City',
            ),
            const CityDropdown(),
            buildText(
              title: 'ZipCode',
            ),
            const ZipCodeDropdown(),
            buildText(
              title: 'Street',
            ),
            const StreetDropdown(),
            buildText(
              title: 'Features',
            ),
            const AmenityFilterWidget(),
            OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: const MaterialStatePropertyAll(EdgeInsets.zero),
                    fixedSize: MaterialStatePropertyAll(Size(28.w, 25.h)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                          color: Color(0xFFFF0808),
                        )))),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'Clear',
                    style: TextStyle(
                      color: const Color(0xFFFF0808),
                      fontSize: 20.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ))
          ]),
        ),
        20.sbh,
        ClipRRect(
          child: CachedNetworkImage(
            width: double.infinity,
            height: 450.h,
            fit: BoxFit.cover,
            imageUrl:
                'https://images.unsplash.com/photo-1567016251318-c85cc6f139c9?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
        )
      ],
    );
  }

  Column buildText({required String title}) {
    return Column(
      children: [
        5.sbh,
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF0C2950),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        5.sbh,
      ],
    );
  }
}
