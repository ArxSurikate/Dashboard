import 'package:flutter/material.dart';
import 'package:rpg_app/service/router.dart';
import 'package:rpg_app/service/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: CustomTheme.themeData,
      routerConfig: CustomRouter.router,
    );
  }
}