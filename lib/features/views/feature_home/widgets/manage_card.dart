import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vodafone_app_homepage/features/widgets/resources/app_images.dart';

class ManageCards extends StatelessWidget {
  const ManageCards({
    super.key,
    required this.manageData,
  });
  final ManageCardData manageData;
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
            manageData.image,
            width: 19,
            height: 19,
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            manageData.plan,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF2D2D2D),
            ),
          ),
        ],
      ),
    );
  }
}

class ManageCardData {
  final String plan;

  final String image;

  ManageCardData({
    required this.image,
    required this.plan,
  });
}

List<ManageCardData> manageData = [
  ManageCardData(
    image: AppImages.add,
    plan: 'Top Up Airtime Or Data ',
  ),
  ManageCardData(
    image: AppImages.phone,
    plan: 'My Subscriptions',
  ),
  ManageCardData(
    image: AppImages.star,
    plan: 'Value-Added Services',
  ),
  ManageCardData(
    image: AppImages.gift,
    plan: 'Red Loyalty Rewards',
  ),
];
