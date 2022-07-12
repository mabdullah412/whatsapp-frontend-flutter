import 'package:flutter/material.dart';

import 'colors.dart';
import 'responsive/responsive_layout.dart';
import 'screens/desktop_screen_layout.dart';
import 'screens/mobile_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        desktopScreenLayout: DesktopScreenLayout(),
      ),
    );
  }
}
