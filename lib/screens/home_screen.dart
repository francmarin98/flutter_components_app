import 'package:flutter/material.dart';

import 'package:components_app/router/app_router.dart';
import 'package:components_app/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRouter.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes Flutter"),
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(
              menuOptions[index].icon,
              color: AppTheme.colorPrimary,
            ),
            title: Text(menuOptions[index].label),
            onTap: () {
              // final route = MaterialPageRoute(builder: (context) {
              //   return const ListViewScreenTwo();
              // });
              // Navigator.push(context, route);

              Navigator.pushNamed(context, menuOptions[index].routeName);
            },
          );
        },
      ),
    );
  }
}
