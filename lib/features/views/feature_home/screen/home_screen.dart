import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vodafone_app_homepage/features/views/feature_home/feature_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xFFF2F8F8),
            pinned: true,
            automaticallyImplyLeading: false,
            elevation: 0,
            collapsedHeight: 120.sp,
            stretch: true,
            expandedHeight: 120.sp,
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              collapseMode: CollapseMode.parallax,
              expandedTitleScale: 1,
              title: HomeAppBar(),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(
                  height: 19,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DataCard(),
                          AirTimeCard(),
                        ],
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      const PayBillCard(),
                      const SizedBox(
                        height: 42,
                      ),
                      Text(
                        'Manage',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF2B2B2B),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: manageData.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 19.sp,
                            crossAxisSpacing: 33.sp,
                            childAspectRatio: 1.4),
                        itemBuilder: ((context, i) {
                          final item = manageData[i];
                          return ManageCards(manageData: item);
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
