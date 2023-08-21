import 'package:flutter/material.dart';

class list_card extends StatelessWidget {
  final String text;
  final String window;

  const list_card({
    Key? key,
    required this.text,
    required this.window,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListTile(
        title: TextButton(
          onPressed: () => Navigator.of(context).pushNamed(window),
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        tileColor: Colors.amber,
      ),
    );
  }
}