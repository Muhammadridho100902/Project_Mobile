import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:latihan_widget/grid_view_widget/model/grid_mode.dart';

class GridViewPage extends StatelessWidget {
  GridViewPage({super.key});

  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<UserGridModel> dataList = List.generate(100, (index) {
      return UserGridModel(
        faker.company.name(),
        faker.address.country(),
        10000 + Random().nextInt(100000),
        "https://picsum.photos/id/$index/200",
      );
    });
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Grid View"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            footer: Container(
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dataList[index].name,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  Text(
                    dataList[index].description,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            child: Image.network(dataList[index].imageUrl),
          );
        },
        itemCount: dataList.length,
      ),
    );
  }
}
