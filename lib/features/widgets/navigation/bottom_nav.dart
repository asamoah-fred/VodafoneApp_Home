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

  final List<Widget> _widgetOptions = [
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
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFFF8F8F8),
            currentIndex: _selectedIndex!,
            unselectedItemColor: const Color(0xFF676A75),
            selectedItemColor: const Color(0xFF676A75),
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            iconSize: 28,
            unselectedLabelStyle: TextStyle(
              fontSize: 9.sp,
              fontWeight: FontWeight.w700,
            ),
            selectedLabelStyle: TextStyle(
              fontSize: 9.sp,
              fontWeight: FontWeight.w700,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SvgPicture.asset(
                      AppImages.device,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
                label: 'Services',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SvgPicture.asset(
                      AppImages.cash,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
                label: 'Cash',
              ),
              const BottomNavigationBarItem(
                icon: Text(''),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SvgPicture.asset(
                      AppImages.add,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
                label: 'Bundles',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SvgPicture.asset(
                      AppImages.settings,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
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
          Positioned(
            bottom: 10,
            left: 178,
            child: InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const NavigationMenu(index: 2)),
                    ),
                    (route) => true);
              },
              child: const Image(
                image: AssetImage(AppImages.tobi),
                width: 56,
                height: 56,
              ),
            ),
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex!),
    );
  }
}
