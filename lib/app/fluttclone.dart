import 'package:fluttclone/app/home.dart';
import 'package:flutter/material.dart';

class Fluttclone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fluttclone',
          ),
        ),
        body: Home(),
      ),
    );
  }
}
