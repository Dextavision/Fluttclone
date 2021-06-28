import 'package:fluttclone/fitness/fitness.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        GestureDetector(
          child: Card(
            child: ListTile(
              title: Text('Fitness'),
            ),
            color: Colors.purple.shade300,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Fitness(),
              ),
            );
          },
        ),
      ],
    );
  }
}
