import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          ColorfullContainer(
            cor: Colors.red,
            title: 'Box 1',
          ),
          ColorfullContainer(
            cor: Colors.blue,
          ),
          ColorfullContainer(
            cor: Colors.white,
            title: 'Box 3',
          ),
        ],
      ),
    );
  }
}

class ColorfullContainer extends StatelessWidget {
  final Color cor;
  final String title;

  ColorfullContainer({Key key, this.cor, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      color: cor,
      alignment: Alignment.center,
      child: Text(
        /*'Teste',*/
        title,
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 25,
          decoration: TextDecoration.none
        ),
      ),
    );
  }
}