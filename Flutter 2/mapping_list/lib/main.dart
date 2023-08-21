import 'package:flutter/material.dart';
import 'package:mapping_list/data/data.dart';
import 'package:mapping_list/data/data_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Mapping List"),
        ),
        body: ListView(
          children : myData.map((e){
            return ListTile(
              title: Text("${e['name']}"),
              subtitle: Text("${e['university']}"),
            );
          }).toList()
        )
      ),
    );
  }
}
