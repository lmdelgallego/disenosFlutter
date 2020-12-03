import 'package:disenos/src/pages/basic_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disenos',
      initialRoute: 'basico',
      routes: {
        'basico': (BuildContext context) => BasicPage(),
      },
    );
  }
}
