import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';

class  HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => 
          ListTile(
            leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primaryColor),
            title: Text(AppRoutes.menuOptions[index].name),
            onTap: () {
              // final route = MaterialPageRoute(
              //   builder: (context) => const ListView1Screen()
              // );
              // Navigator.push(context, route);
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
            },
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
        separatorBuilder: (_, __) => const Divider(thickness: 0.5), 
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}