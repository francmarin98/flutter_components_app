// import 'package:components_app/screens/listview_screen_one.dart';
import 'package:components_app/screens/listview_screen_two.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: ListViewScreenTwo());
  }
}
