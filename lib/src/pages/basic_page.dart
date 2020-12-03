import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleTitle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final styleSubTitle = TextStyle(fontSize: 14, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildImage(),
            _titleContainer(),
            _buildActions(),
            _buildText(),
            _buildText(),
            _buildText(),
            _buildText(),
            _buildText(),
          ],
        ),
      ),
    );
  }

  Widget _buildText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Image(
      image: NetworkImage(
          'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png'),
      fit: BoxFit.cover,
      height: 250,
    );
  }

  Widget _titleContainer() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Montanas', style: styleTitle),
                  SizedBox(height: 7),
                  Text('Montanas con atardecer', style: styleSubTitle),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _actionBtn(Colors.blue, Icons.call, 'CALL'),
        _actionBtn(Colors.blue, Icons.near_me, 'ROUTER'),
        _actionBtn(Colors.blue, Icons.share, 'SHARE'),
      ],
    );
  }

  Column _actionBtn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
