import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assets',
      home: HomeWidget(),
      theme: ThemeData(fontFamily: 'SunsetBeach', brightness: Brightness.dark),
    );
  }
}

class HomeWidget extends StatelessWidget {
  Widget _buildPage(String text, String asset) {
    return Container(
      child: Container(
        child: Text(text, style: TextStyle(fontSize: 48.0)),
        alignment: Alignment.center,
        color: Colors.black26,
      ),
      decoration: BoxDecoration(
          color: Colors.black54,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(asset),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [
        _buildPage("Viva seus momentos", "assets/images/beach00.jpg"),
        _buildPage("Aproveite a vida", "assets/images/beach01.jpg"),
        _buildPage("Siga seus sonhos", "assets/images/beach02.jpg"),
      ],
    ));
  }
}
