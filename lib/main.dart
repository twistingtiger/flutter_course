import 'package:flutter/material.dart';

import './prod_manager.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurpleAccent
      ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: ProdManager()),
    );
  }
}

