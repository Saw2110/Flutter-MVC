import 'package:flutter/material.dart';
import 'package:mvcflutter/src/controller/controller.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MVC Flutter',
      // home: Scaffold(body: Center(child: Text('Hello World!'))),
      home: IndexController(),
    );
  }
}
