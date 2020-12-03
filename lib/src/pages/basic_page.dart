import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleTitle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final styleSubTitle = TextStyle(fontSize: 14, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png'),
            ),
            Container(
              padding: EdgeInsets.all(32),
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
            )
          ],
        ),
      ),
    );
  }
}
