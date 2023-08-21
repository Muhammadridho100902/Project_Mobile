import 'package:flutter/material.dart';
import 'package:latihan_widget/grid_view_widget/grid_view_page.dart';

import 'onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/onboarding',
      routes: {
        '/onboarding' : (context) => const OnboardingPage(),
        '/gridview' :(context) => GridViewPage(),
      },
    );
  }
}
