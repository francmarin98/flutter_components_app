import 'package:flutter/material.dart';
import 'package:components_app/router/app_router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components App',
      initialRoute: AppRouter.initialRoute,
      routes: AppRouter.getAppRoutes(),
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
