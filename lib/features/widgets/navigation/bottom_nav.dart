

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vodafone_app_homepage/features/views/feature_bundle/screen/bundle_screen.dart';
import 'package:vodafone_app_homepage/features/views/feature_cash/screen/cash_screen.dart';
import 'package:vodafone_app_homepage/features/views/feature_home/feature_home.dart';
import 'package:vodafone_app_homepage/features/views/feature_services/screen/services_screen.dart';
import 'package:vodafone_app_homepage/features/views/feature_settings/screen/settings_screen.dart';
import 'package:vodafone_app_homepage/features/widgets/resources/app_images.dart';

class NavigationMenu extends StatefulWidget {
  final int index;
  const NavigationMenu({super.key, required this.index});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int? _selectedIndex;

  final List<Widget> _widgetOptions =[
    const ServicesScreen(),
    const CashScreen(),
    const HomeScreen(),
    const BundleScreen(),
    const SettingsScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFF8F8F8),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFF8F8F8),
        currentIndex: _selectedIndex!,
        unselectedItemColor: const Color(0xFF676A75),
        selectedItemColor: const Color(0xFF676A75),
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        unselectedLabelStyle: TextStyle(
          fontSize: 9.sp,
          fontWeight: FontWeight.w700,
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.device,
            ),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.cash,
            ),
            label: 'Cash',
          ),
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Image(
                image: AssetImage(AppImages.tobi),
                width: 56,
                height: 56,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.add,
            ),
            label: 'Bundles',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.settings,
            ),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex!),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Color.fromRGBO(59, 61, 191, 1),
      //   isExtended: true,
      //   onPressed: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: ((context) => Add())));
      //   },
      //   child: Icon(
      //     Icons.add,
      //     size: 40,
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
