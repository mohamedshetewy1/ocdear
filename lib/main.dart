import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ocdear/screen/doctor_app/navigation_doctor/nav_doctor.dart';
import 'package:ocdear/screen/intro/splash_screen/splash.dart';
import 'package:ocdear/screen/user_app/parent_mode/navigation_parent/nav_parent.dart';
// import 'package:ocdear/screen/intro/splash_screen/splash.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
