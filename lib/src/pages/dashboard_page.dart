import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: Stack(
        children: [
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titleContent(),
                _buttonsGrid(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
      selectedItemColor: Colors.pinkAccent,
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 30,
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.calendar_today,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.pie_chart_outline_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.supervised_user_circle,
          ),
        ),
      ],
    );
  }

  Widget _backgroundApp() {
    final gradient = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
        ),
      ),
    );

    final box = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Color.fromRGBO(236, 98, 188, 1.0),
              spreadRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ],
          ),
        ),
      ),
    );

    return Stack(
      children: [
        gradient,
        Positioned(
          top: -100,
          child: box,
        ),
      ],
    );
  }

  Widget _titleContent() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transaction',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Classify this transaction into a particular category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buttonsGrid() {
    return Table(
      children: [
        TableRow(
          children: [
            _customButtomItem(Colors.blue, Icons.border_all, 'General'),
            _customButtomItem(
                Colors.purpleAccent, Icons.directions_bus_outlined, 'Bus'),
          ],
        ),
        TableRow(
          children: [
            _customButtomItem(Colors.pinkAccent, Icons.share, 'Buy'),
            _customButtomItem(Colors.orange, Icons.insert_drive_file, 'file'),
          ],
        ),
        TableRow(
          children: [
            _customButtomItem(
                Colors.blueAccent, Icons.movie_outlined, 'Enterteiment'),
            _customButtomItem(Colors.green, Icons.cloud_outlined, 'Grocery'),
          ],
        ),
        TableRow(
          children: [
            _customButtomItem(Colors.red, Icons.collections, 'Photos'),
            _customButtomItem(Colors.tealAccent, Icons.help_outline, 'Help'),
          ],
        ),
        TableRow(
          children: [
            _customButtomItem(
                Colors.blueGrey, Icons.settings_outlined, 'Settings'),
            _customButtomItem(Colors.lime, Icons.share_outlined, 'Shared'),
          ],
        ),
      ],
    );
  }

  Widget _customButtomItem(Color color, IconData icon, String label) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 180,
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 106, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: color,
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Text(
                  label,
                  style: TextStyle(color: color),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
