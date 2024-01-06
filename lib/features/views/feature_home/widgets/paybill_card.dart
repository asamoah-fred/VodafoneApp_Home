import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vodafone_app_homepage/features/widgets/resources/app_images.dart';

class PayBillCard extends StatelessWidget {
  const PayBillCard({
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
            AppImages.payBill,
            width: 23,
            height: 15,
          ),
          const SizedBox(
            height: 35,
          ),
          Text(
            'Pay Bill',
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF262626),
            ),
          ),
          SizedBox(
            width: 120,
            child: Text(
              'Make payments for your postpaid services',
              style: TextStyle(
                fontSize: 9.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF848484),
              ),
            ),
          ),
        ],
      ),
    );
  }
}