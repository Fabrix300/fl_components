import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});

  final options = const [
    'Megaman', 
    'Metal Gear', 
    'Super Smash', 
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: <Widget>[
          ...options.map(
            (element) => ListTile(
              trailing: const Icon(
                Icons.arrow_forward_ios
              ),
              leading: const Icon(
                Icons.person
              ),
              title: Text(element),
            )
          ).toList()
        ],
      ),
    );
  }
}