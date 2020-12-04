import 'package:disenos/src/pages/basic_page.dart';
import 'package:disenos/src/pages/dashboard_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.blueGrey,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disenos',
      initialRoute: 'dashboard',
      routes: {
        'basico': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'dashboard': (BuildContext context) => DashboardPage(),
      },
    );
  }
}
