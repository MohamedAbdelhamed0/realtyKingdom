import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realtykingdom/extantsions.dart';

class PhotoRow extends StatelessWidget {
  const PhotoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [buildTextExploreTheNeighborhoods(), buildAllPhotoRow()]);
  }

  Row buildAllPhotoRow() {
    return Row(
      children: [buildLeft3Photo(), buildRight3Photo()],
    );
  }

  Expanded buildRight3Photo() {
    return Expanded(
      child: Column(
        children: [
          ClipRRect(
            child: CachedNetworkImage(
              width: double.infinity,
              height: 100.h,
              fit: BoxFit.cover,
              imageUrl:
                  'https://images.unsplash.com/photo-1582407947304-fd86f028f716?q=80&w=1596&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
          ),
          10.sbh,
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  child: CachedNetworkImage(
                    width: double.infinity,
                    height: 200.h,
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://images.unsplash.com/photo-1559966303-99414caa494a?q=80&w=1376&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                ),
              ),
              10.sbw,
              Expanded(
                child: ClipRRect(
                  child: CachedNetworkImage(
                    width: double.infinity,
                    height: 200.h,
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://images.unsplash.com/photo-1557813282-bcd50093e38f?q=80&w=1376&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Expanded buildLeft3Photo() {
    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
        child: Column(
          children: [
            ClipRRect(
              child: CachedNetworkImage(
                width: double.infinity,
                height: 100.h,
                fit: BoxFit.cover,
                imageUrl:
                    'https://images.unsplash.com/photo-1602497485099-e41a116a272c?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
            ),
            10.sbh,
            ClipRRect(
              child: CachedNetworkImage(
                width: double.infinity,
                height: 100.h,
                fit: BoxFit.cover,
                imageUrl:
                    'https://images.unsplash.com/photo-1567016251318-c85cc6f139c9?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
            ),
            10.sbh,
            ClipRRect(
              child: CachedNetworkImage(
                width: double.infinity,
                height: 100.h,
                fit: BoxFit.cover,
                imageUrl:
                    'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
            )
          ],
        ),
      ),
    );
  }

  Text buildTextExploreTheNeighborhoods() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Explore The ',
            style: GoogleFonts.nunito(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 48,
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          TextSpan(
            text: 'Neighborhoods',
            style: GoogleFonts.nunito(
              textStyle: const TextStyle(
                color: Color(0xFFF3051B),
                fontSize: 48,
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
