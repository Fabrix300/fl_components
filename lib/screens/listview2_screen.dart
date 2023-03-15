import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({super.key});

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
        title: const Text('Listview Tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => 
          ListTile(
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.indigo,
            ),
            leading: const Icon(
              Icons.person,
              color: Colors.indigo,
            ),
            title: Text(options[i]),
            onTap: () {

            },
          ), 
        separatorBuilder: (_, __) => const Divider(thickness: 1.2), 
        itemCount: options.length,
      ),
    );
  }
}