import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<UserModel?> fetchedData() async {
    Uri baseUrl = Uri.parse("https://reqres.in/api/users/2");
    var response = await http.get(baseUrl);
    if (response.statusCode == 200) {
      var data = (json.decode(response.body) as Map<String, dynamic>)['data'];
      return UserModel.fromJson(data);
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<UserModel?>(
        future: fetchedData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasData) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    backgroundImage: NetworkImage(snapshot.data!.avatar)),
                const SizedBox(
                  height: 20,
                ),
                Text(snapshot.data!.email),
                const SizedBox(
                  height: 5,
                ),
                Text(
                    "${snapshot.data!.first_name}  ${snapshot.data!.last_name}"),
              ],
            ));
          } else {
            return const Center(child: Text("there is no data in here"));
          }
        },
      ),
    );
  }
}

class UserModel {
  int id;
  String email;
  String first_name;
  String last_name;
  String avatar;

  UserModel({
    required this.id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.avatar,
  });

  factory UserModel.fromJson(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'],
      email: data['email'],
      first_name: data['first_name'],
      last_name: data['last_name'],
      avatar: data['avatar'],
    );
  }
}
