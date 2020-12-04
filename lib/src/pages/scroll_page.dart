import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          children: [
            _pageOne(),
            _pageTwo(),
          ],
        ),
      ),
    );
  }

  Widget _pageOne() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imgBackground(),
        _textContent(),
      ],
    );
  }

  Widget _pageTwo() {
    return Container(
      color: Color.fromRGBO(108, 192, 218, 1),
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Text('Bienvenidos'),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _textContent() {
    final styleText = TextStyle(color: Colors.white, fontSize: 50);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20.0),
          Text('11º', style: styleText),
          Text('Miercoles', style: styleText),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1),
    );
  }

  Widget _imgBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(image: AssetImage('assets/scroll-1.png'), fit: BoxFit.cover),
    );
  }
}
