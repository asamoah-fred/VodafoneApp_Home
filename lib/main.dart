import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vodafone_app_homepage/features/widgets/navigation/bottom_nav.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const VodafoneApp());
}

class VodafoneApp extends StatelessWidget {
  const VodafoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        home: NavigationMenu(
          index: 2,
        ),
      ),
    );
  }
}
