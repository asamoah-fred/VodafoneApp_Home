import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vodafone_app_homepage/features/widgets/resources/app_images.dart';

class AirTimeCard extends StatelessWidget {
  const AirTimeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 117,
      width: 154,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: const Color(0xFFFBFBFB),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            AppImages.airtimeBalance,
            width: 23,
            height: 15,
          ),
          const SizedBox(
            height: 38.12,
          ),
          Text(
            'Your airtime balance',
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF848484),
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(
                AppImages.cedi,
                width: 8,
                height: 13,
              ),
              Text(
                '4.32',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF262626),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}