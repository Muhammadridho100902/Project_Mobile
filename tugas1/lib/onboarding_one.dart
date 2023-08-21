import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return Scaffold(
        body: SafeArea(child: Column(children: [
            Container(
                padding: const EdgeInsets.fromLTRB(24.4, 42.0, 24.4, 40.0),
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/laundry(1).png'))                    
                ],
                ),
            )
        ],
        ),
        ),
      );
  }
}