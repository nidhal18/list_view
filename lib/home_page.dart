

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final List<String> items = List<String>.generate(100, (index) => 'Item $index');

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tapped on ${items[index]}')),
              );
            },
          );
        },
      ),
    );
  }
}
