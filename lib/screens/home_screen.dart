import 'package:components_app/router/app_router.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRouter.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes Flutter"),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(menuOptions[index].icon),
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
