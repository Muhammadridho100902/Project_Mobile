import 'package:flutter/material.dart';

import '../widgets/list_tile.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Widgets in Flutter"),
        ),
        body: ListView(
          children: const [
            list_card(
              text: "Grid View",
              window: "/gridview"
            ),
          ],
        ));
  }
}


